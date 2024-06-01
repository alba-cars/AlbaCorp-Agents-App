import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'linkus_sdk_method_channel.dart';

abstract class LinkusSdkPlatform extends PlatformInterface {
  /// Constructs a LinkusSdkPlatform.
  LinkusSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static LinkusSdkPlatform _instance = MethodChannelLinkusSdk();

  /// The default instance of [LinkusSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelLinkusSdk].
  static LinkusSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LinkusSdkPlatform] when
  /// they register themselves.
  static set instance(LinkusSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> initialize() {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<bool> loginToPbx(
      {required String userName,
      required String password,
      required String localeIp,
      required int localePortI,
      required String remoteIp,
      required int remotePortI}) {
    throw UnimplementedError('loginToPbx() has not been implemented.');
  }

  Future<bool> makeACall({
    required String number,
  }) {
    throw UnimplementedError('makeACall() has not been implemented.');
  }

  Stream onSdkCallBack() {
    throw UnimplementedError('onSdkCallBack() has not been implemented.');
  }
}
