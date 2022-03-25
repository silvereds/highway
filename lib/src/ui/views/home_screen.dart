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
import 'package:mobile/src/ui/views/licence_page.dart';
import 'package:mobile/src/ui/views/navigation/custom_animated_bottom_bar.dart';
import 'package:mobile/src/ui/views/notification/notification_sceen.dart';
import 'package:mobile/src/ui/views/product_services_info.dart';
import 'package:mobile/src/ui/views/terms_page.dart';
import 'package:mobile/src/ui/views/views.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex;
  Color _inactiveColor;

  // List of Widget display in the body
  final List<Widget> _children = <Widget>[
    DashBoard(),
    AccountsView(),
    AllTransactionsPage(),
    AllDevicesPage(),
    AllMaps(),
    NotificationScreen(),
    SupportPage(),
    SettingPreference(),
    PolicyPage(),
    TermsAndConditions(),
    LicenceAgreement(),
    ProductServicesInfo(),
    ConversationDetails()
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
    _inactiveColor = Color.fromARGB(255, 88, 86, 86);
    _getJwtToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBarView(),
      ),
      drawer: NavDrawer(showInTap: _onTapTapped),
      body: _children[_currentIndex],
      bottomNavigationBar: CustomAnimatedBottomBar(
        containerHeight: 100,
        backgroundColor: Colors.black,
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavyBarItem(
            icon: const Icon(
              Icons.dashboard_outlined,
            ),
            title: Text(AppLocalizations.of(context).dashboard),
            activeColor: Color(0xFF00CDAC),
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.credit_card,
            ),
            title: Text(AppLocalizations.of(context).accounts),
            activeColor: Color(0xFF00CDAC),
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.local_atm_outlined,
            ),
            title: Text(AppLocalizations.of(context).transactions),
            activeColor: Color(0xFF00CDAC),
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.credit_card,
            ),
            title: Text(AppLocalizations.of(context).devices),
            activeColor: Color(0xFF00CDAC),
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.place_outlined,
            ),
            title: Text(AppLocalizations.of(context).map),
            activeColor: Color(0xFF00CDAC),
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  void _onTapTapped(int index) {
    Future.delayed(Duration.zero, () async {
      setState(() {
        _currentIndex = index;
      });
      Navigator.pop(context);
    });
  }
}
