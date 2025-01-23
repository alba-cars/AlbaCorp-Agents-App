package com.twilio.voice.flutter.Utils;

import static android.content.Context.AUDIO_SERVICE;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.Log;

import com.twilio.voice.flutter.R;

import java.util.concurrent.locks.ReentrantLock;

public class SoundUtils {

    private boolean playing = false;
    private boolean loaded = false;
    private boolean playingCalled = false;
    private final float volume;
    private final SoundPool soundPool;
    private final int ringingSoundId;
    private int ringingStreamId;
    private final int disconnectSoundId;
    private static SoundUtils instance;
    private static final ReentrantLock lock = new ReentrantLock(); // For thread-safe singleton
    private final Vibrator vibrator;
    private final AudioManager audioManager;

    private SoundUtils(Context context) {
        audioManager = (AudioManager) context.getSystemService(AUDIO_SERVICE);
        float actualVolume = (float) audioManager.getStreamVolume(AudioManager.STREAM_MUSIC);
        float maxVolume = (float) audioManager.getStreamMaxVolume(AudioManager.STREAM_MUSIC);
        volume = actualVolume / maxVolume;

        // Load the sounds
        int maxStreams = 1;
        soundPool = new SoundPool.Builder()
                .setMaxStreams(maxStreams)
                .build();

        soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() {
            @Override
            public void onLoadComplete(SoundPool soundPool, int sampleId, int status) {
                if (status == 0) { // Check if load was successful
                    loaded = true;
                    if (playingCalled && sampleId == ringingSoundId) {
                        playRinging();
                        playingCalled = false;
                    }
                } else {
                    Log.e("SoundUtils", "Failed to load sound: " + sampleId);
                }
            }
        });
        ringingSoundId = soundPool.load(context, R.raw.incoming, 1);
        disconnectSoundId = soundPool.load(context, R.raw.disconnect, 1);

        vibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
    }

    public static SoundUtils getInstance(Context context) {
        lock.lock();
        try {
            if (instance == null) {
                instance = new SoundUtils(context);
            }
        } finally {
            lock.unlock();
        }
        return instance;
    }

    public void playRinging() {
        if (loaded && !playing) {
            switch (audioManager.getRingerMode()) {
                case AudioManager.RINGER_MODE_NORMAL:
                    ringingStreamId = soundPool.play(ringingSoundId, volume, volume, 1, -1, 1f);
                    vibrate();
                    playing = true;
                    break;
                case AudioManager.RINGER_MODE_VIBRATE:
                    vibrate();
                    playing = true;
                    break;
                default:
                    break;
            }
        } else {
            playingCalled = true; // Set to call later
        }
    }

    private void vibrate() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            if (vibrator.hasVibrator()) {
                long[] mVibratePattern = new long[] { 0, 400, 400, 400, 400, 400, 400, 400 };
                final int[] mAmplitudes = new int[] { 0, 128, 0, 128, 0, 128, 0, 128 };
                vibrator.vibrate(VibrationEffect.createWaveform(mVibratePattern, mAmplitudes, 0));
            } else {
                Log.e("SoundUtils", "Vibrator service not available.");
            }
        } else {
            long[] mVibratePattern = new long[] { 0, 400, 400, 400, 400, 400, 400, 400 };
            vibrator.vibrate(mVibratePattern, 0);
        }
    }

    public void stopRinging() {
        if (playing) {
            soundPool.stop(ringingStreamId);
            vibrator.cancel();
            playing = false; // Ensure the state reflects that ringing has stopped
        }
    }

    public void playDisconnect() {
        if (loaded) {
            soundPool.play(disconnectSoundId, volume, volume, 1, 0, 1f);
            // Set playing to false here is incorrect as it may conflict with ringing state
        }
    }
}
