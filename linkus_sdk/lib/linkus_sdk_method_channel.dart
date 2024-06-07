import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'linkus_sdk_platform_interface.dart';

/// An implementation of [LinkusSdkPlatform] that uses method channels.
class MethodChannelLinkusSdk extends LinkusSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('linkus_sdk');
  final eventChannel = const EventChannel('linkus-sdk-callback');
  Stream? _stream;

  @override
  Future<bool> initialize() async {
    final initialize = await methodChannel.invokeMethod<bool>('initialize');
    return initialize ?? false;
  }

  @override
  Future<bool> loginToPbx(
      {required String userName,
      required String password,
      required String localeIp,
      required int localePortI,
      required String remoteIp,
      required int remotePortI}) async {
    final initialize = await methodChannel.invokeMethod<bool>('login', {
      'userName': userName,
      'password': password,
      'localeIp': localeIp,
      'localePortI': localePortI,
      'remoteIp': remoteIp,
      'remotePortI': remotePortI,
    });
    return initialize ?? false;
  }

  @override
  Future<bool> requestPermission() async {
    final initialize =
        await methodChannel.invokeMethod<bool>('requestPermission', {});
    return initialize ?? false;
  }

  @override
  Future<bool> makeACall({
    required String number,
  }) async {
    final initialize = await methodChannel.invokeMethod<bool>('makeACall', {
      'number': number,
    });
    return initialize ?? false;
  }

  @override
  Future<bool> hangUpCall({required int callId}) async {
    final initialize = await methodChannel.invokeMethod<bool>('hangUpCall', {
      'callId': callId,
    });
    return initialize ?? false;
  }

  Future<bool> setFcmToken({required String token}) async {
    final initialize = await methodChannel.invokeMethod<bool>('setFcmToken', {
      'token': token,
    });
    return initialize ?? false;
  }

  @override
  Stream onSdkCallBack() {
    _stream ??= eventChannel.receiveBroadcastStream();
    return _stream!;
  }
}
