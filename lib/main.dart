import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:movie_app/components/views/app.dart';
import 'package:movie_app/flavor_settings.dart';
import 'package:movie_app/services/authentication.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  final settings = await _getFlavorSettings();
  await Firebase.initializeApp();
  print('STARTED WITH FLAVOR $settings');
  runApp(App());
}

Future<FlavorSettings> _getFlavorSettings() async {
  String? flavor =
      await const MethodChannel('flavor').invokeMethod<String>('getFlavor');

  print('STARTED WITH FLAVOR $flavor');

  if (flavor == 'dev') {
    return FlavorSettings.dev();
  }
  else if (flavor == 'staging') {
    return FlavorSettings.staging();
  }
  else if (flavor == 'product') {
    return FlavorSettings.product();
  } else {
    throw Exception("Unknown flavor: $flavor");
  }
}
