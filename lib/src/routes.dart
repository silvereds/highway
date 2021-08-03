import 'package:flutter/material.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/ui/views/Create_password.dart';
import 'package:mobile/src/ui/views/views.dart';

class RouteGenerator {
  static const splashScreenPage = '/';
  static const registerPage = '/register';
  static const loginPage = '/login';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const resetPasswordScreen = '/resetPasswordScreen';
  static const dashboard = '/dashboard';
  static const createPassword = '/createPassword';
  static const verifyPasscodePage = '/verifyPasscode';
  static const accountsView = '/accoutsView';
  static const accoutsDetailsView = '/accoutsDetailsView';
  static const rechargeAccountpage = '/rechargeAccountPage';
  static const changeAlias = '/changeAliasPage';
  static const alldevicesPage = '/alldevicesPage';
  static const deviceDetailsPage = '/deviceDetailsPage';
  static const changeDevicePage = '/changeDevicePage';
  static const blockDevicePage = '/blockDevicePage';
  static const changePinPage = '/changePinPage';
  static const allTransactionsPage = '/allTransactionsPage';
  static const transferMoneyPage = '/tansferMoneyPage';

  static const transactionDetailsPage = '/transactionDetailsPage';
  static const supportPage = '/supportPage';
  static const newConversationPage = '/newConversationPage';
  static const homeScreen = '/homeScreen';
  static const settingPreference = '/settingPreference';
  static const policyPage = '/policyPage';
  static const conversationDetails = '/conversationDetailsPage';

  RouteGenerator._();

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case splashScreenPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashScreenPage(),
        );
      case registerPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => RegisterPage(),
        );
      case loginPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => LoginPage(),
        );
      case forgotPasswordScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ForgotPasswordScreen(),
        );
      case resetPasswordScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ResetPasswordScreen(
            email: args as String,
          ),
        );
      case homeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
        );
      case createPassword:
        return MaterialPageRoute<dynamic>(
          builder: (_) => CreatePassword(),
        );
      case verifyPasscodePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => VerifyPasscodePage(
            user: args as User,
          ),
        );
      case accountsView:
        return MaterialPageRoute<dynamic>(
          builder: (_) => AccountsView(),
        );
      case accoutsDetailsView:
        return MaterialPageRoute<dynamic>(
          builder: (_) => AccountsDetailsView(),
        );
      case rechargeAccountpage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => RechargeAccountPage(),
        );
      case changeAlias:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ChangeAliasView(),
        );

      case changeDevicePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ChangeDevicePage(),
        );
      case changePinPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ChangePinPage(),
        );
      case allTransactionsPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => AllTransactionsPage(),
        );

      case transactionDetailsPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => TransactionDetailsPage(),
        );
      case supportPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SupportPage(),
        );
      case newConversationPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => NewConversationPage(),
        );
      case settingPreference:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SettingPreference(),
        );
      case policyPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => PolicyPage(),
        );
      case conversationDetails:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ConversationDetails(),
        );
      case alldevicesPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => AllDevicesPage(),
        );
      default:
        throw RouteException("Route Not found");
    }
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}