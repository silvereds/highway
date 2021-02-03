import 'package:flutter/material.dart';


import 'package:mobile/shared/routes.dart';
import 'package:mobile/views/Verify_passcode_page.dart';
import 'package:mobile/views/dashboard.dart';
import 'package:mobile/views/register_page.dart';
import 'package:mobile/views/splash_screen_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:mobile/views/Login_page.dart';
import 'package:mobile/views/all_accoutsView.dart';
import 'package:mobile/views/accounts_detail_view.dart';
import 'package:mobile/views/recharge_account.dart';
import 'package:mobile/views/change_alias.dart';
import 'package:mobile/views/all_devices_page.dart';
import 'package:mobile/views/device_details_page.dart';
import 'package:mobile/views/change_device_page.dart';
import 'package:mobile/views/block_device_page.dart';
import 'package:mobile/views/change_pin_page.dart';
import 'package:mobile/views/all_transactions_page.dart';
import 'package:mobile/views/transaction_details_page.dart';
import 'package:mobile/views/transfer_money_page.dart';
import 'package:mobile/views/confirm_transfer_page.dart';
import 'package:mobile/views/transfer_completed_page.dart';



void main() {
  runApp(MyApp());


  runApp(
    
     DevicePreview(
   
    builder: (context) => MyApp(), // Wrap your app
  ),
);//<-- Comment  this line  if you want to run without Device preview
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HIGHWEH',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // inputDecorationTheme: InputDecorationTheme.
      ),


      initialRoute:                AppRoutes.verifyPasscodePage,

      routes: {
        AppRoutes.splashScreenPage: (context) => SplashScreenPage(),
        AppRoutes.registerPage: (context) => RegisterPage(),
        AppRoutes.loginPage: (context) =>  LoginPage(),
        AppRoutes.dashboard: (context) => DashBoard(),
        AppRoutes.verifyPasscodePage: (context) => VerifyPasscodePage(),
        AppRoutes. accountsView: (context) => AccountsView(),
        AppRoutes.accoutsDetailsView: (context) => AccountsDetailsView(),
        AppRoutes.rechargeAccountpage: (context) => RechargeAccountPage(),
        AppRoutes.changeAlias: (context) => ChangeAliasView(),
        AppRoutes.alldevicesPage: (context) => AllDevicesPage(),
        AppRoutes.deviceDetailsPage: (context) => DeviceDetailsPage(),
       AppRoutes.changeDevicePage: (context) => ChangeDevicePage(),
       AppRoutes.blockDevicePage: (context) => BlockDevicePage(),
        AppRoutes.changePinPage: (context) => ChangePinPage(),
       AppRoutes.allTransactionsPage: (context) => AllTransactionsPage(),
       AppRoutes.transferMoneyPage: (context) => TransferMoneyPage(),
      AppRoutes.confirmTransferPage: (context) => ConfirmTransferPage(),
      AppRoutes.transferCompletedPage: (context)=>  TransferCompletedPage(),
      AppRoutes.transactionDetailsPage: (context) => TransactionDetailsPage()
      },
    );
  }
}
