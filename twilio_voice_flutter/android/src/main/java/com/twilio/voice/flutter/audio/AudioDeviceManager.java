package com.twilio.voice.flutter.audio;

import android.Manifest;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Build;
import android.util.Log;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class AudioDeviceManager {
    private static final String TAG = "AudioDeviceManager";
    
    public enum AudioDevice {
        SPEAKERPHONE,
        WIRED_HEADSET,
        EARPIECE,
        BLUETOOTH,
        NONE
    }

    private final Context context;
    private final AudioManager audioManager;
    private BluetoothAdapter bluetoothAdapter;
    private BluetoothHeadset bluetoothHeadset;
    private AudioDevice selectedAudioDevice = AudioDevice.NONE;
    private final List<AudioDevice> availableAudioDevices = new ArrayList<>();
    private AudioDeviceChangeListener deviceChangeListener;

    public interface AudioDeviceChangeListener {
        void onAudioDeviceChanged(AudioDevice selectedDevice, List<AudioDevice> availableDevices);
    }

    private final BroadcastReceiver headsetReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action != null) {
                switch (action) {
                    case Intent.ACTION_HEADSET_PLUG:
                        updateAvailableAudioDevices();
                        break;
                    case BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED:
                        updateBluetoothDevices();
                        break;
                }
            }
        }
    };

    public AudioDeviceManager(Context context) {
        this.context = context;
        this.audioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        initializeBluetoothAdapter();
        registerReceivers();
        updateAvailableAudioDevices();
    }

    private boolean hasBluetoothPermissions() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            return context.checkSelfPermission(Manifest.permission.BLUETOOTH_CONNECT) 
                   == PackageManager.PERMISSION_GRANTED;
        }
        return true; // For older Android versions
    }

    private void initializeBluetoothAdapter() {
        if (!hasBluetoothPermissions()) {
            Log.w(TAG, "Bluetooth permissions not granted");
            return;
        }

        try {
            bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
            if (bluetoothAdapter != null) {
                bluetoothAdapter.getProfileProxy(context, new BluetoothProfile.ServiceListener() {
                    @Override
                    public void onServiceConnected(int profile, BluetoothProfile proxy) {
                        if (profile == BluetoothProfile.HEADSET) {
                            bluetoothHeadset = (BluetoothHeadset) proxy;
                            updateBluetoothDevices();
                        }
                    }

                    @Override
                    public void onServiceDisconnected(int profile) {
                        if (profile == BluetoothProfile.HEADSET) {
                            bluetoothHeadset = null;
                            updateAvailableAudioDevices();
                        }
                    }
                }, BluetoothProfile.HEADSET);
            }
        } catch (SecurityException e) {
            Log.e(TAG, "SecurityException when initializing Bluetooth: " + e.getMessage());
        }
    }

    private void registerReceivers() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(Intent.ACTION_HEADSET_PLUG);
            intentFilter.addAction(BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED);
            context.registerReceiver(headsetReceiver, intentFilter);
        } catch (SecurityException e) {
            Log.e(TAG, "SecurityException when registering receivers: " + e.getMessage());
        }
    }

    public void setAudioDeviceChangeListener(AudioDeviceChangeListener listener) {
        this.deviceChangeListener = listener;
    }

    public void selectDevice(AudioDevice device) {
        if (!availableAudioDevices.contains(device)) {
            Log.w(TAG, "Attempted to select unavailable device: " + device);
            return;
        }

        selectedAudioDevice = device;
        try {
            switch (device) {
                case SPEAKERPHONE:
                    audioManager.setSpeakerphoneOn(true);
                    break;
                case BLUETOOTH:
                    if (hasBluetoothPermissions()) {
                        audioManager.setSpeakerphoneOn(false);
                        audioManager.startBluetoothSco();
                        audioManager.setBluetoothScoOn(true);
                    }
                    break;
                case EARPIECE:
                case WIRED_HEADSET:
                    audioManager.setSpeakerphoneOn(false);
                    audioManager.setBluetoothScoOn(false);
                    break;
            }
        } catch (SecurityException e) {
            Log.e(TAG, "SecurityException when selecting audio device: " + e.getMessage());
        }

        if (deviceChangeListener != null) {
            deviceChangeListener.onAudioDeviceChanged(selectedAudioDevice, availableAudioDevices);
        }
    }

    public AudioDevice getSelectedDevice() {
        return selectedAudioDevice;
    }

    public List<AudioDevice> getAvailableDevices() {
        return new ArrayList<>(availableAudioDevices);
    }

    private void updateAvailableAudioDevices() {
        availableAudioDevices.clear();

        // Check for wired headset
        if (isWiredHeadsetPluggedIn()) {
            availableAudioDevices.add(AudioDevice.WIRED_HEADSET);
        }

        // Check for Bluetooth devices
        if (hasBluetoothHeadset()) {
            availableAudioDevices.add(AudioDevice.BLUETOOTH);
        }

        // Always add speaker
        availableAudioDevices.add(AudioDevice.SPEAKERPHONE);

        // Add earpiece if available
        if (hasEarpiece()) {
            availableAudioDevices.add(AudioDevice.EARPIECE);
        }

        // If no device is selected or the selected device is no longer available,
        // select the first available device
        if (selectedAudioDevice == AudioDevice.NONE || 
            !availableAudioDevices.contains(selectedAudioDevice)) {
            selectDevice(availableAudioDevices.get(0));
        }

        if (deviceChangeListener != null) {
            deviceChangeListener.onAudioDeviceChanged(selectedAudioDevice, availableAudioDevices);
        }
    }

    private boolean isWiredHeadsetPluggedIn() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            AudioDeviceInfo[] devices = audioManager.getDevices(AudioManager.GET_DEVICES_ALL);
            for (AudioDeviceInfo device : devices) {
                if (device.getType() == AudioDeviceInfo.TYPE_WIRED_HEADSET ||
                    device.getType() == AudioDeviceInfo.TYPE_WIRED_HEADPHONES) {
                    return true;
                }
            }
            return false;
        } else {
            return audioManager.isWiredHeadsetOn();
        }
    }

    private boolean hasBluetoothHeadset() {
        if (!hasBluetoothPermissions()) {
            return false;
        }

        if (bluetoothAdapter != null && bluetoothHeadset != null) {
            try {
                List<BluetoothDevice> devices = bluetoothHeadset.getConnectedDevices();
                return !devices.isEmpty();
            } catch (SecurityException e) {
                Log.e(TAG, "SecurityException when checking Bluetooth headset: " + e.getMessage());
                return false;
            }
        }
        return false;
    }

    private boolean hasEarpiece() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            AudioDeviceInfo[] devices = audioManager.getDevices(AudioManager.GET_DEVICES_OUTPUTS);
            for (AudioDeviceInfo device : devices) {
                if (device.getType() == AudioDeviceInfo.TYPE_BUILTIN_EARPIECE) {
                    return true;
                }
            }
            return false;
        }
        return true; // Assume earpiece exists on older devices
    }

    private void updateBluetoothDevices() {
        if (hasBluetoothPermissions()) {
            updateAvailableAudioDevices();
        }
    }

    public void close() {
        try {
            context.unregisterReceiver(headsetReceiver);
        } catch (IllegalArgumentException e) {
            // Receiver not registered
        }
        
        if (bluetoothHeadset != null && bluetoothAdapter != null && hasBluetoothPermissions()) {
            try {
                bluetoothAdapter.closeProfileProxy(BluetoothProfile.HEADSET, bluetoothHeadset);
            } catch (SecurityException e) {
                Log.e(TAG, "SecurityException when closing Bluetooth profile: " + e.getMessage());
            }
        }
    }
}