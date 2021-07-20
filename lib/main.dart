import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:mobile/src/core/services/services.dart';
import 'package:mobile/src/routes.dart';
import 'package:mobile/src/ui/themes/app_themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

void _getDeviceInfo() async {
  var device = DeviceInfoPlugin();

  var deviceName = '';

  if (Platform.isAndroid) {
    var androidDeviceInfo = await device.androidInfo;
    deviceName = androidDeviceInfo.model;
  } else if (Platform.isIOS) {
    var iosDeviceInfo = await device.iosInfo;
    deviceName = iosDeviceInfo.model;
  }

  SharedPrefService().saveString('deviceName', deviceName);
  print('device name: $deviceName');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  _setupLogging();
  _getDeviceInfo();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      title: "HIGHWEH",
      onGenerateTitle: (_) => "HIGHWEH",
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: RouteGenerator.key,
      initialRoute: RouteGenerator.splashScreenPage,
    );
  }
}
