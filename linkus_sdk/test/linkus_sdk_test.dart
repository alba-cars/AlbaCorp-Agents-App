import 'package:flutter_test/flutter_test.dart';
import 'package:linkus_sdk/linkus_sdk.dart';
import 'package:linkus_sdk/linkus_sdk_platform_interface.dart';
import 'package:linkus_sdk/linkus_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLinkusSdkPlatform
    with MockPlatformInterfaceMixin
    implements LinkusSdkPlatform {
  @override
  Future<bool> initialize() => Future.value(true);
}

void main() {
  final LinkusSdkPlatform initialPlatform = LinkusSdkPlatform.instance;

  test('$MethodChannelLinkusSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLinkusSdk>());
  });

  test('initialize', () async {
    LinkusSdk linkusSdkPlugin = LinkusSdk();
    MockLinkusSdkPlatform fakePlatform = MockLinkusSdkPlatform();
    LinkusSdkPlatform.instance = fakePlatform;

    expect(await linkusSdkPlugin.initialize(), true);
  });
}
