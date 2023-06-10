import 'package:flutter_test/flutter_test.dart';
import 'package:dgis_plugin/dgis_plugin.dart';
import 'package:dgis_plugin/dgis_plugin_platform_interface.dart';
import 'package:dgis_plugin/dgis_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDgisPluginPlatform
    with MockPlatformInterfaceMixin
    implements DgisPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DgisPluginPlatform initialPlatform = DgisPluginPlatform.instance;

  test('$MethodChannelDgisPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDgisPlugin>());
  });

  test('getPlatformVersion', () async {
    DgisPlugin dgisPlugin = DgisPlugin();
    MockDgisPluginPlatform fakePlatform = MockDgisPluginPlatform();
    DgisPluginPlatform.instance = fakePlatform;

    expect(await dgisPlugin.getPlatformVersion(), '42');
  });
}
