import 'package:flutter/material.dart';

enum DeviceType { mobile, tablet, desktop }

class DevicesUtils {
  static DeviceType getDeviceType({required double width}) {
    if (width >= 1024) {
      return DeviceType.desktop;
    } else if (width >= 600) {
      return DeviceType.tablet;
    } else {
      return DeviceType.mobile;
    }
  }
}

Size getDesingSize({required double width}) {
  if (width >= 1024) {
    return Size(1440, 1162);
  } else if (width >= 600) {
    return Size(1440, 1162);
  } else {
    return Size(1440, 1162);
  }
}
