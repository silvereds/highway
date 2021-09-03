import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_user_agent/flutter_user_agent.dart';
import 'package:logging/logging.dart';
import 'package:mobile/src/core/services/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/app_widget.dart';
import 'src/core/api/http_client.dart';

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

void _getDeviceInfo() async {
  // var device = DeviceInfoPlugin();
  var _userAgent = '';
  try {
    _userAgent = await FlutterUserAgent.getPropertyAsync('userAgent');
    SharedPrefService()
        .saveString('deviceName', 'mobile: $_userAgent'.toLowerCase());
  } catch (e) {
    _userAgent = 'mobile';
  }
  print('user agent: $_userAgent');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  // RequestREST().init();
  _setupLogging();
  _getDeviceInfo();
  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}
