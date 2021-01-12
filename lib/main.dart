import 'package:flutter/material.dart';
import 'package:mobile/shared/routes.dart';
import 'package:mobile/views/Company_profile.dart';
import 'package:mobile/views/dashboard.dart';
import 'package:mobile/views/register_page.dart';
import 'package:mobile/views/splash_screen_page.dart';

void main() {
  runApp(MyApp());
  runApp(
      MyApp()); //<-- Comment  this line  if you want to run without Device preview
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        AppRoutes.splashScreenPage: (context) => SplashScreenPage(),
        AppRoutes.registerPage: (context) => RegisterPage(),
        AppRoutes.loginPage: (context) => CompanyProfileView(),
        AppRoutes.dashboard: (context) => DashBoard(),
      },
    );
  }
}
