import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:mobile/src/core/common/shared_prefs_constants.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/core/services/services.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/views/all_accounts_view/all_accoutsView.dart';
import 'package:mobile/src/ui/views/all_maps.dart';
import 'package:mobile/src/ui/views/dashboard/dashboard.dart';
import 'package:mobile/src/ui/views/views.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex;

  // List of Widget display in the body
  final List<Widget> _children = <Widget>[
    DashBoard(),
    AccountsView(),
    AllTransactionsPage(),
    AllDevicesPage(),
    AllMaps(),
  ];

  void _getJwtToken() async {
    if ((await SharedPrefService().getString(PreferencesConstants.API_TOKEN)) ==
        null) {
      await context.read(AuthProvider.authProvider).getAuthToken();
    }
  }

  @override
  void initState() {
    super.initState();
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    _currentIndex = 0;
    _getJwtToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),
      appBar: AppBarView(),
      drawer: NavDrawer(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color(0xFFFFFFFF),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF53B27F),
        unselectedItemColor: Color(0xFF334D6E),
        onTap: _onTapTapped,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.dashboard_outlined,
            ),
            label: AppLocalizations.of(context).dashboard,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.credit_card,
            ),
            label: AppLocalizations.of(context).accounts,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.local_atm_outlined,
            ),
            label: AppLocalizations.of(context).transactions,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.credit_card,
            ),
            label: AppLocalizations.of(context).devices,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.place_outlined,
            ),
            label: AppLocalizations.of(context).map,
          ),
        ],
      ),
    );
  }

  void _onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
