import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/components/views/app.dart';
import 'package:movie_app/flavor_settings.dart';
Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final settings = await _getFlavorSettings();
  await Firebase.initializeApp();
  print('STARTED WITH FLAVOR $settings');
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('vi', 'VN')],
      path: 'assets/translations',
      saveLocale: true,
      fallbackLocale: const Locale('en', 'US'),
      startLocale: const Locale('vi', 'VN'),
      child: App()));
}

Future<FlavorSettings> _getFlavorSettings() async {
  String? flavor =
      await const MethodChannel('flavor').invokeMethod<String>('getFlavor');

  print('STARTED WITH FLAVOR $flavor');

  if (flavor == 'dev') {
    return FlavorSettings.dev();
  } else if (flavor == 'staging') {
    return FlavorSettings.staging();
  } else if (flavor == 'product') {
    return FlavorSettings.product();
  } else {
    throw Exception("Unknown flavor: $flavor");
  }
}
