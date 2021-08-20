import 'package:flutter/material.dart';
import 'package:mobile/src/routes.dart';

import 'ui/themes/app_themes.dart';

class AppWidget extends StatelessWidget {
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
