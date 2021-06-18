import 'package:flutter/foundation.dart' as foundation;

// https://medium.com/@sarimk80/flutter-bottom-navigation-bar-android-and-ios-8971ab7d92a3
bool get isAndroid => foundation.defaultTargetPlatform == foundation.TargetPlatform.android;
bool get isiOS => foundation.defaultTargetPlatform == foundation.TargetPlatform.iOS;
