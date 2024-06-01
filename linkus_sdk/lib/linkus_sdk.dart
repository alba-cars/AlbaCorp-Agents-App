import 'linkus_sdk_platform_interface.dart';

class LinkusSdk {
  Future<bool> initialize() {
    return LinkusSdkPlatform.instance.initialize();
  }

  Future<bool> loginToPbx(
      {required String userName,
      required String password,
      required String localeIp,
      required int localePortI,
      required String remoteIp,
      required int remotePortI}) {
    return LinkusSdkPlatform.instance.loginToPbx(
        userName: userName,
        password: password,
        localeIp: localeIp,
        localePortI: localePortI,
        remoteIp: remoteIp,
        remotePortI: remotePortI);
  }

  Future<bool> makeACall({required String number}) {
    return LinkusSdkPlatform.instance.makeACall(number: number);
  }

  Stream onSdkCallBack() {
    return LinkusSdkPlatform.instance.onSdkCallBack();
  }
}
