import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dgis_plugin_method_channel.dart';

abstract class DgisPluginPlatform extends PlatformInterface {
  /// Constructs a DgisPluginPlatform.
  DgisPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static DgisPluginPlatform _instance = MethodChannelDgisPlugin();

  /// The default instance of [DgisPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelDgisPlugin].
  static DgisPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DgisPluginPlatform] when
  /// they register themselves.
  static set instance(DgisPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
