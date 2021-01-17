import 'package:flutter/material.dart';
import 'package:mobile/shared/routes.dart';
import 'package:mobile/views/Company_profile.dart';
import 'package:mobile/views/Verify_passcode_page.dart';
import 'package:mobile/views/dashboard.dart';
import 'package:mobile/views/register_page.dart';
import 'package:mobile/views/splash_screen_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:mobile/views/Login_page.dart';
import 'package:mobile/views/all_accoutsView.dart';




void main() {
  runApp(MyApp());


//   runApp(
    
//      DevicePreview(
   
//     builder: (context) => MyApp(), // Wrap your app
//   ),
// );//<-- Comment  this line  if you want to run without Device preview
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HIGHWEH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),


      initialRoute:       AppRoutes. accountsView,

      routes: {
        AppRoutes.splashScreenPage: (context) => SplashScreenPage(),
        AppRoutes.registerPage: (context) => RegisterPage(),
        AppRoutes.loginPage: (context) =>  LoginPage(),
        AppRoutes.dashboard: (context) => DashBoard(),
        AppRoutes.verifyPasscodePage: (context) => VerifyPasscodePage(),
        AppRoutes. accountsView: (context) => AccountsView(),
    
     

      },
    );
  }
}
