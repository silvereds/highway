

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:mobile/splash_screen.dart';



void main() {
  runApp( MyApp());

   runApp(DevicePreview(builder: (context) => MyApp()));    //<-- Comment  this line off if you want to run without Device preview
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
        home:   SplashScreen());
  }
}
