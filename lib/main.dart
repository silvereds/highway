import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/routes.dart';
import 'package:mobile/src/ui/themes/app_themes.dart';
import 'package:mobile/src/ui/views/home_screen.dart';

import 'src/ui/views/Login_page.dart';
import 'src/ui/views/Verify_passcode_page.dart';
import 'src/ui/views/accounts_detail_view.dart';
import 'src/ui/views/all_accoutsView.dart';
import 'src/ui/views/all_devices_page.dart';
import 'src/ui/views/all_transactions_page.dart';
import 'src/ui/views/block_device_page.dart';
import 'src/ui/views/change_alias.dart';
import 'src/ui/views/change_device_page.dart';
import 'src/ui/views/change_pin_page.dart';
import 'src/ui/views/confirm_transfer_page.dart';
import 'src/ui/views/dashboard.dart';
import 'src/ui/views/device_details_page.dart';
import 'src/ui/views/new_conversation_page.dart';
import 'src/ui/views/recharge_account.dart';
import 'src/ui/views/register_page.dart';
import 'src/ui/views/splash_screen_page.dart';
import 'src/ui/views/support_page.dart';
import 'src/ui/views/transaction_details_page.dart';
import 'src/ui/views/transfer_completed_page.dart';
import 'src/ui/views/transfer_money_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HIGHWEH',
      // Set the theme of the app to light
      theme: AppThemes.lightTheme,
      initialRoute: AppRoutes.homeScreen,
      routes: {
        AppRoutes.splashScreenPage: (context) => SplashScreenPage(),
        AppRoutes.registerPage: (context) => RegisterPage(),
        AppRoutes.loginPage: (context) => LoginPage(),
        AppRoutes.dashboard: (context) => DashBoard(),
        AppRoutes.verifyPasscodePage: (context) => VerifyPasscodePage(),
        AppRoutes.accountsView: (context) => AccountsView(),
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
        AppRoutes.transferCompletedPage: (context) => TransferCompletedPage(),
        AppRoutes.transactionDetailsPage: (context) => TransactionDetailsPage(),
        AppRoutes.supportPage: (context) => SupportPage(),
        AppRoutes.newConversationPage: (context) => NewConversationPage(),
        AppRoutes.homeScreen: (context) => HomeScreen(),
      },
    );
  }
}
