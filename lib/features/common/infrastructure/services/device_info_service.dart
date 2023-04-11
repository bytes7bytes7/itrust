import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

const _unknownID = 'unknown';
const _unknownName = 'unknown';

enum DevicePlatform {
  android('Android'),
  fuchsia('Fuchsia'),
  ios('iOS'),
  linux('Linux'),
  macos('macOS'),
  windows('Windows'),
  web('Web'),
  unknown('unknown');

  const DevicePlatform(this.title);

  final String title;
}

enum Browsers {
  firefox('Mozilla Firefox'),
  samsungInternet('Samsumg Internet Browser'),
  opera('Opera Web Browser'),
  msie('Microsoft Internet Explorer'),
  edge('Microsoft Edge'),
  chrome('Google Chrome'),
  safari('Apple Safari'),
  unknown('Unknown web browser');

  const Browsers(this.title);

  final String title;

  static Browsers fromBrowserNameEnum(BrowserName name) {
    switch (name) {
      case BrowserName.firefox:
        return Browsers.firefox;
      case BrowserName.samsungInternet:
        return Browsers.samsungInternet;
      case BrowserName.opera:
        return Browsers.opera;
      case BrowserName.msie:
        return Browsers.msie;
      case BrowserName.edge:
        return Browsers.edge;
      case BrowserName.chrome:
        return Browsers.chrome;
      case BrowserName.safari:
        return Browsers.safari;
      case BrowserName.unknown:
        return Browsers.unknown;
    }
  }
}

@Singleton(as: DeviceInfoService)
class ProdDeviceInfoService implements DeviceInfoService {
  ProdDeviceInfoService({
    required DeviceInfoPlugin deviceInfoPlugin,
  }) : _deviceInfoPlugin = deviceInfoPlugin;

  final DeviceInfoPlugin _deviceInfoPlugin;

  @override
  Future<PrivateDeviceInfo> getDeviceInfo() async {
    if (Platform.isAndroid) {
      final info = await _deviceInfoPlugin.androidInfo;

      return PrivateDeviceInfo(
        id: info.id,
        name: info.model,
        platform: DevicePlatform.android.title,
      );
    } else if (Platform.isIOS) {
      final info = await _deviceInfoPlugin.iosInfo;

      return PrivateDeviceInfo(
        id: info.identifierForVendor ?? _unknownID,
        name: info.model ?? info.name ?? _unknownName,
        platform: DevicePlatform.ios.title,
      );
    } else if (Platform.isLinux) {
      final info = await _deviceInfoPlugin.linuxInfo;

      return PrivateDeviceInfo(
        id: info.machineId ?? info.buildId ?? _unknownID,
        name: info.prettyName,
        platform: DevicePlatform.linux.title,
      );
    } else if (Platform.isWindows) {
      final info = await _deviceInfoPlugin.windowsInfo;

      return PrivateDeviceInfo(
        id: info.deviceId,
        name: info.productName,
        platform: DevicePlatform.windows.title,
      );
    } else if (Platform.isMacOS) {
      final info = await _deviceInfoPlugin.macOsInfo;

      return PrivateDeviceInfo(
        id: info.systemGUID ?? info.kernelVersion,
        name: info.model,
        platform: DevicePlatform.macos.title,
      );
    } else if (kIsWeb) {
      final info = await _deviceInfoPlugin.webBrowserInfo;

      return PrivateDeviceInfo(
        id: info.appVersion ?? info.vendor ?? _unknownID,
        name: Browsers.fromBrowserNameEnum(info.browserName).title +
            (info.appVersion != null ? ' ${info.appVersion}' : ''),
        platform: DevicePlatform.web.title,
      );
    } else {
      return PrivateDeviceInfo(
        id: _unknownID,
        name: _unknownName,
        platform: DevicePlatform.unknown.title,
      );
    }
  }
}
