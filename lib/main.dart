

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:mobile/splash_screen.dart';
import 'package:mobile/Login_views/First_Login_Email.dart';
import 'package:mobile/Accounts/all_accouts/all_accoutsView.dart';
import 'package:mobile/Profile_screens/Company_profile.dart';
import 'package:mobile/Accounts/block_account/block_accountView.dart';
import 'package:mobile/Accounts/block_account/change_alias.dart';
import 'package:mobile/Transactions_views/dashboard.dart';
import 'package:mobile/Accounts/Accounts_details/accounts_detail_view.dart';



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
       initialRoute: '/',
        routes:
        
         {

          '/': (context) => SplashScreen(),
          '/firstlogin-Email': (context) => FirstLoginEmail(),
          '/companyProfile': (context) => CompanyProfileView(),
         
        },



   
        );
  }
}

