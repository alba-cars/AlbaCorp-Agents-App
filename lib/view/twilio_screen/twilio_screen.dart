// import 'dart:async';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:twilio_voice_flutter/model/status.dart';
// import 'package:twilio_voice_flutter/twilio_voice_flutter.dart';

// class TwilioCallPage extends StatefulWidget {
//   static const routeName = '/twilio_call_page';
//   const TwilioCallPage({
//     Key? key,
//     this.to,
//     this.from,
//     this.isIncoming = false,
//     this.callSid,
//   }) : super(key: key);

//   final String? to;
//   final String? from;
//   final String? callSid;
//   final bool isIncoming;

//   @override
//   State<TwilioCallPage> createState() => _EnhancedTwilioCallPageState();
// }

// class _EnhancedTwilioCallPageState extends State<TwilioCallPage>
//     with SingleTickerProviderStateMixin {
//   bool _isSpeaker = false;
//   bool _isMuted = false;
//   bool _isCalling = false;
//   bool _isIncoming = false;
//   String _callStatus = "";
//   String _phoneNumber = "";
//   String _callerName = "";
//   Duration _callDuration = Duration.zero;
//   late AnimationController _rippleController;
//   late Animation<double> _rippleAnimation;
//   Timer? _callTimer;

//   // Audio device management
//   List<AudioDevice> _availableDevices = [];
//   AudioDevice? _selectedDevice;
//   StreamSubscription? _audioDeviceSubscription;
//   StreamSubscription? _callEventSubscription;

//   final List<Map<String, String>> _dialPadNumbers = [
//     {'number': '1', 'letters': ''},
//     {'number': '2', 'letters': 'ABC'},
//     {'number': '3', 'letters': 'DEF'},
//     {'number': '4', 'letters': 'GHI'},
//     {'number': '5', 'letters': 'JKL'},
//     {'number': '6', 'letters': 'MNO'},
//     {'number': '7', 'letters': 'PQRS'},
//     {'number': '8', 'letters': 'TUV'},
//     {'number': '9', 'letters': 'WXYZ'},
//     {'number': '+', 'letters': '+'},
//     {'number': '0', 'letters': '+'},
//     {'number': '#', 'letters': ''},
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _rippleController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 600),
//     );
//     _rippleAnimation = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(parent: _rippleController, curve: Curves.easeOut),
//     );

//     _isIncoming = widget.isIncoming;
//     if (widget.to != null) {
//       _phoneNumber = widget.to!;
//     } else if (widget.from != null) {
//       _phoneNumber = widget.from!;
//       _callerName =
//           "Incoming Call"; // You can replace this with actual caller name if available
//     }

//     _initializeTwilio();
//   }

//   Future<void> _initializeTwilio() async {
//     await TwilioVoiceFlutter.init();

//     _audioDeviceSubscription =
//         TwilioVoiceFlutter.onAudioDeviceChange.listen((event) {
//       setState(() {
//         _availableDevices = event.availableDevices;
//         _selectedDevice = event.selectedDevice;
//         _isSpeaker = event.selectedDevice == AudioDevice.speakerPhone;
//       });
//     });

//     _callEventSubscription = TwilioVoiceFlutter.onCallEvent.listen((event) {
//       if (!mounted) return;
//       setState(() {
//         switch (event.status) {
//           case TwilioVoiceFlutterStatus.connecting:
//             _callStatus = "Connecting...";
//             break;
//           case TwilioVoiceFlutterStatus.connected:
//             _callStatus = "Connected";
//             _isCalling = true;
//             _startCallTimer();
//             break;
//           case TwilioVoiceFlutterStatus.disconnected:
//             _callStatus = "Call Ended";
//             _isCalling = false;
//             _stopCallTimer();
//             // Auto-close the page after call ends

//             break;
//           case TwilioVoiceFlutterStatus.ringing:
//             _callStatus = "Ringing...";
//             break;
//           default:
//             _callStatus = event.status.toString() ?? "";
//         }
//       });
//     });

//     final devices = await TwilioVoiceFlutter.getAudioDevices();
//     final currentDevice = await TwilioVoiceFlutter.getCurrentAudioDevice();

//     setState(() {
//       _availableDevices = devices;
//       _selectedDevice = currentDevice;
//       _isSpeaker = currentDevice == AudioDevice.speakerPhone;
//     });

//     // If this is an incoming call, automatically set it to calling state
//     if (_isIncoming) {
//       setState(() {
//         _isCalling = true;
//         _callStatus = "Incoming Call";
//       });
//     }
//   }

//   Future<void> _handleCall() async {
//     if (_isCalling) {
//       // End the call
//       await TwilioVoiceFlutter.hangUp();
//       setState(() {
//         _isCalling = false;
//         _callStatus = "Call Ended";
//       });
//       _stopCallTimer();
//     } else if (_isIncoming) {
//       // Answer incoming call
//       try {
//         setState(() {
//           _isCalling = true;
//           _callStatus = "Connected";
//         });
//       } catch (e) {
//         setState(() {
//           _callStatus = "Failed to Accept Call";
//         });
//       }
//     } else if (_phoneNumber.isNotEmpty) {
//       // Make outgoing call
//       try {
//         await TwilioVoiceFlutter.makeCall(to: _phoneNumber);
//         setState(() {
//           _isCalling = true;
//           _callStatus = "Connecting...";
//         });
//       } catch (e) {
//         setState(() {
//           _callStatus = "Call Failed";
//         });
//       }
//     }
//   }

//   void _startCallTimer() {
//     _callTimer?.cancel();
//     _callTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         _callDuration += const Duration(seconds: 1);
//       });
//     });
//   }

//   void _stopCallTimer() {
//     _callTimer?.cancel();
//     setState(() {
//       _callDuration = Duration.zero;
//     });
//   }

//   Widget _buildDialPadButton(Map<String, String> number) {
//     return TweenAnimationBuilder<double>(
//       duration: const Duration(milliseconds: 200),
//       tween: Tween<double>(begin: 1, end: 1),
//       builder: (context, scale, child) {
//         return GestureDetector(
//           onTapDown: (_) {
//             _rippleController.forward(from: 0);
//             _handleDialPadInput(number['number']!);
//           },
//           onTapUp: (_) {
//             _rippleController.reverse();
//           },
//           child: AnimatedBuilder(
//             animation: _rippleAnimation,
//             builder: (context, child) {
//               return Container(
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.1),
//                   shape: BoxShape.circle,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.white
//                           .withOpacity(_rippleAnimation.value * 0.1),
//                       spreadRadius: _rippleAnimation.value * 10,
//                       blurRadius: _rippleAnimation.value * 10,
//                     ),
//                   ],
//                 ),
//                 child: Transform.scale(
//                   scale: 1 - (_rippleAnimation.value * 0.1),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         number['number']!,
//                         style: const TextStyle(
//                           fontSize: 36,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       if (number['letters']!.isNotEmpty)
//                         Text(
//                           number['letters']!,
//                           style: TextStyle(
//                             fontSize: 10,
//                             color: Colors.white.withOpacity(0.8),
//                             letterSpacing: 2,
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         );
//       },
//     );
//   }

//   Future<void> _toggleMute() async {
//     final muted = await TwilioVoiceFlutter.toggleMute();
//     setState(() {
//       _isMuted = muted;
//     });
//   }

//   Future<void> _toggleSpeaker() async {
//     if (_selectedDevice == AudioDevice.speakerPhone) {
//       // If speaker is on, try to switch to earpiece or first available device
//       final preferredDevice = _availableDevices.contains(AudioDevice.earpiece)
//           ? AudioDevice.earpiece
//           : _availableDevices.first;
//       await TwilioVoiceFlutter.selectAudioDevice(preferredDevice);
//     } else {
//       // If speaker is off, switch to speaker
//       await TwilioVoiceFlutter.selectAudioDevice(AudioDevice.speakerPhone);
//     }
//   }

//   void _showAudioDeviceSelector() {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.black.withOpacity(0.9),
//       builder: (context) => Container(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: _availableDevices.map((device) {
//             final isSelected = device == _selectedDevice;
//             String deviceName = device.toString().split('.').last;
//             deviceName = deviceName[0].toUpperCase() +
//                 deviceName.substring(1).toLowerCase();

//             return ListTile(
//               leading: Icon(
//                 _getAudioDeviceIcon(device),
//                 color: Colors.white,
//               ),
//               title: Text(
//                 deviceName,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//                 ),
//               ),
//               trailing: isSelected
//                   ? const Icon(Icons.check, color: Colors.white)
//                   : null,
//               onTap: () async {
//                 await TwilioVoiceFlutter.selectAudioDevice(device);
//                 Navigator.pop(context);
//               },
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }

//   IconData _getAudioDeviceIcon(AudioDevice device) {
//     switch (device) {
//       case AudioDevice.speakerPhone:
//         return CupertinoIcons.speaker_2_fill;
//       case AudioDevice.earpiece:
//         return CupertinoIcons.phone_solid;
//       case AudioDevice.wiredHeadset:
//         return CupertinoIcons.headphones;
//       case AudioDevice.bluetooth:
//         return CupertinoIcons.bluetooth;
//       default:
//         return CupertinoIcons.speaker_2_fill;
//     }
//   }

//   void _handleDialPadInput(String value) async {
//     if (_isCalling) {
//       await TwilioVoiceFlutter.sendDigits(value);
//     }
//     setState(() {
//       _phoneNumber += value;
//     });
//   }

//   Widget _buildCallControl({
//     required IconData icon,
//     required String label,
//     required VoidCallback onTap,
//     VoidCallback? onLongPress,
//     Color backgroundColor = const Color(0xFF4C4C4C),
//     bool isActive = false,
//   }) {
//     return TweenAnimationBuilder<double>(
//       duration: const Duration(milliseconds: 200),
//       tween: Tween<double>(begin: 1, end: isActive ? 0.9 : 1),
//       builder: (context, scale, child) {
//         return Transform.scale(
//           scale: scale,
//           child: GestureDetector(
//             onTap: onTap,
//             onLongPress: onLongPress,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 AnimatedContainer(
//                   duration: const Duration(milliseconds: 200),
//                   width: 60,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: isActive ? Colors.white : backgroundColor,
//                     shape: BoxShape.circle,
//                     boxShadow: [
//                       BoxShadow(
//                         color: (isActive ? Colors.white : backgroundColor)
//                             .withOpacity(0.3),
//                         spreadRadius: 2,
//                         blurRadius: 8,
//                       ),
//                     ],
//                   ),
//                   child: Icon(
//                     icon,
//                     color: isActive ? backgroundColor : Colors.white,
//                     size: 28,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.white.withOpacity(0.8),
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF2C2C2C),
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Colors.black.withOpacity(0.7),
//                 Colors.black.withOpacity(0.9),
//               ],
//             ),
//           ),
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//             child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 40),
//                   AnimatedSwitcher(
//                     duration: const Duration(milliseconds: 200),
//                     child: Column(
//                       children: [
//                         Text(
//                           _phoneNumber.isEmpty ? "Add Number" : _phoneNumber,
//                           key: ValueKey<String>(_phoneNumber),
//                           style: const TextStyle(
//                             fontSize: 36,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w300,
//                           ),
//                         ),
//                         if (_callStatus.isNotEmpty)
//                           Padding(
//                             padding: const EdgeInsets.only(top: 8.0),
//                             child: Text(
//                               _callStatus,
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.white.withOpacity(0.8),
//                               ),
//                             ),
//                           ),
//                         if (_isCalling && _callDuration > Duration.zero)
//                           Padding(
//                             padding: const EdgeInsets.only(top: 4.0),
//                             child: Text(
//                               '${_callDuration.inMinutes.toString().padLeft(2, '0')}:${(_callDuration.inSeconds % 60).toString().padLeft(2, '0')}',
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.white.withOpacity(0.6),
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),
//                   ),
//                   const Spacer(),
//                   if (!_isCalling)
//                     AnimatedOpacity(
//                       opacity: _isCalling ? 0.0 : 1.0,
//                       duration: const Duration(milliseconds: 200),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: List.generate(4, (rowIndex) {
//                           return Padding(
//                             padding: const EdgeInsets.only(bottom: 16),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: List.generate(3, (colIndex) {
//                                 final index = rowIndex * 3 + colIndex;
//                                 return _buildDialPadButton(
//                                     _dialPadNumbers[index]);
//                               }),
//                             ),
//                           );
//                         }),
//                       ),
//                     ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(vertical: 20),
//                     child: AnimatedSwitcher(
//                       duration: const Duration(milliseconds: 300),
//                       child: _isCalling
//                           ? Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 _buildCallControl(
//                                   icon: _isMuted
//                                       ? CupertinoIcons.mic_slash_fill
//                                       : CupertinoIcons.mic_fill,
//                                   label: "mute",
//                                   onTap: _toggleMute,
//                                   isActive: _isMuted,
//                                 ),
//                                 _buildCallControl(
//                                   icon: CupertinoIcons.keyboard,
//                                   label: "keypad",
//                                   onTap: () {
//                                     // Toggle dialpad visibility
//                                   },
//                                 ),
//                                 _buildCallControl(
//                                   icon: _getAudioDeviceIcon(_selectedDevice ??
//                                       AudioDevice.speakerPhone),
//                                   label: "audio",
//                                   onTap: _toggleSpeaker,
//                                   onLongPress: _showAudioDeviceSelector,
//                                   isActive: _isSpeaker,
//                                 ),
//                                 _buildCallButton(),
//                               ],
//                             )
//                           : Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 const Spacer(),
//                                 GestureDetector(
//                                   onTap: _handleCall,
//                                   child: _buildCallButton(),
//                                 ),
//                                 (_phoneNumber.isNotEmpty)
//                                     ? Expanded(
//                                         child: Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 20),
//                                           child: IconButton(
//                                             onPressed: () {
//                                               setState(() {
//                                                 _phoneNumber =
//                                                     _phoneNumber.substring(
//                                                         0,
//                                                         _phoneNumber.length -
//                                                             1);
//                                               });
//                                             },
//                                             icon: Icon(
//                                               CupertinoIcons.delete_left,
//                                               color:
//                                                   Colors.white.withOpacity(0.8),
//                                               size: 28,
//                                             ),
//                                           ),
//                                         ),
//                                       )
//                                     : const Spacer(),
//                               ],
//                             ),
//                     ),
//                   ),
//                   if (_isCalling && _availableDevices.isNotEmpty)
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 16.0),
//                       child: GestureDetector(
//                         onTap: _showAudioDeviceSelector,
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(
//                               _getAudioDeviceIcon(
//                                   _selectedDevice ?? AudioDevice.speakerPhone),
//                               color: Colors.white.withOpacity(0.8),
//                               size: 16,
//                             ),
//                             const SizedBox(width: 8),
//                             Text(
//                               _selectedDevice?.toString().split('.').last ??
//                                   'Select Audio Device',
//                               style: TextStyle(
//                                 color: Colors.white.withOpacity(0.8),
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildCallButton() {
//     return TweenAnimationBuilder<double>(
//       duration: const Duration(milliseconds: 300),
//       tween: Tween<double>(begin: 1, end: _isCalling ? 0.9 : 1),
//       builder: (context, scale, child) {
//         return Transform.scale(
//           scale: scale,
//           child: Material(
//             color: _isCalling ? Colors.red : const Color(0xFF4CD964),
//             shape: const CircleBorder(),
//             child: InkWell(
//               onTap: _handleCall,
//               customBorder: const CircleBorder(),
//               child: Container(
//                 padding: const EdgeInsets.all(24),
//                 child: AnimatedSwitcher(
//                   duration: const Duration(milliseconds: 200),
//                   child: Icon(
//                     _isCalling
//                         ? CupertinoIcons.phone_down_fill
//                         : CupertinoIcons.phone_fill,
//                     key: ValueKey<bool>(_isCalling),
//                     size: 36,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _rippleController.dispose();
//     _callEventSubscription?.cancel();
//     _audioDeviceSubscription?.cancel();
//     super.dispose();
//   }
// }
