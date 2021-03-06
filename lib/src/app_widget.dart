import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/l10n/l10n.dart';
import 'package:mobile/src/core/providers/auth_notifier.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/core/services/prefs_service.dart';
import 'package:mobile/src/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'ui/themes/app_themes.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  final auth = ref.read(AuthProvider.authProvider);
  final userAgentProvider = ref.watch(userAgentServiceProvider);
  await userAgentProvider.getUserAgent();
  await auth.checkAndUpdateStatus();
  return unit;
});

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderListener(
      provider: initializationProvider,
      onChange: (context, _) {},
      child: ProviderListener<AuthState>(
        provider: AuthProvider.authProvider.state,
        onChange: (context, state) {
          state.maybeWhen(
            orElse: () {},
            unauthenticated: () async {
              print('unauthenticated');
              final isSplashSee =
                  await SharedPrefService().getBool('isSee') ?? false;
              if (isSplashSee) {
                return RouteGenerator.key.currentState.pushNamedAndRemoveUntil(
                    RouteGenerator.loginPage, (route) => false);
              } else {
                return RouteGenerator.key.currentState.pushNamedAndRemoveUntil(
                    RouteGenerator.splashScreenPage, (route) => false);
              }
            },
            authenticated: () {
              print('authenticated');
              return RouteGenerator.key.currentState.pushNamedAndRemoveUntil(
                  RouteGenerator.homeScreen, (route) => false);
            },
          );
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          title: "HIGHWEH",
          onGenerateTitle: (_) => "HIGHWEH",
          onGenerateRoute: RouteGenerator.generateRoute,
          navigatorKey: RouteGenerator.key,
          initialRoute: RouteGenerator.splashScreenPage,
          supportedLocales: L10n.all,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
        ),
      ),
    );
  }
}
