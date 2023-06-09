import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dgis_plugin_platform_interface.dart';

/// An implementation of [DgisPluginPlatform] that uses method channels.
class MethodChannelDgisPlugin extends DgisPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dgis_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
