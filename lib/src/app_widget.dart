import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/providers/auth_notifier.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ui/themes/app_themes.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  final auth = ref.read(AuthProvider.authProvider);
  await auth.checkAndUpdateStatus();
  return unit;
});

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
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
            unauthenticated: () {
              print('unauthenticated');
              return RouteGenerator.key.currentState.pushNamedAndRemoveUntil(
                  RouteGenerator.splashScreenPage, (route) => false);
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
        ),
      ),
    );
  }
}
