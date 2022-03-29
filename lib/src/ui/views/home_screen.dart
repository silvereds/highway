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
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Style extends StyleHook {
  @override
  double get activeIconSize => 40;

  @override
  double get activeIconMargin => 10;

  @override
  double get iconSize => 20;
  @override
  TextStyle textStyle(Color color) {
    // ignore: todo
    // TODO: implement textStyle
    // ignore: dead_code
    return TextStyle(fontSize: 12, color: color);
  }
}

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
        bottomNavigationBar: StyleProvider(
            style: Style(),
            child: ConvexAppBar(
              color: Colors.black,
              backgroundColor: Colors.white,
              activeColor: Color.fromARGB(255, 33, 134, 109),
              height: 60,
              items: [
                TabItem(
                    icon: Icons.dashboard_outlined,
                    title: AppLocalizations.of(context).dashboard),
                TabItem(
                    icon: Icons.credit_card,
                    title: AppLocalizations.of(context).accounts),
                TabItem(
                    icon: Icons.local_atm_outlined,
                    title: AppLocalizations.of(context).transactions),
                TabItem(
                    icon: Icons.credit_card,
                    title: AppLocalizations.of(context).devices),
                TabItem(
                    icon: Icons.place_outlined,
                    title: AppLocalizations.of(context).map),
              ],
              //initialActiveIndex: 2,//optional, default as 0
              onTap: (int i) => {
                setState(() {
                  _currentIndex = i;
                })
              },
            )));
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
