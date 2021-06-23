import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:mobile/src/ui/shared/routes.dart';
import 'package:mobile/src/ui/themes/app_themes.dart';
import 'package:mobile/src/ui/views/home_screen.dart';
import 'package:mobile/src/ui/views/views.dart';

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

void main() {
  _setupLogging();

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
      title: 'HIGHWEH',
      // Set the theme of the app to light
      theme: AppThemes.lightTheme,
      initialRoute: AppRoutes.settingPreference,
      onGenerateTitle: (context) => "HIGHWEH",
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
        AppRoutes.settingPreference: (context) => SettingPreference(),
      },
    );
  }
}
