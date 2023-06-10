
import 'dgis_plugin_platform_interface.dart';

class DgisPlugin {
  Future<String?> getPlatformVersion() {
    return DgisPluginPlatform.instance.getPlatformVersion();
  }
}
