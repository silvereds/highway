import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/views/all_accoutsView.dart';
import 'package:mobile/src/ui/views/all_maps.dart';
import 'package:mobile/src/ui/views/dashboard.dart';
import 'package:mobile/src/ui/views/views.dart';

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

  @override
  void initState() {
    super.initState();
    FlutterStatusbarcolor.setStatusBarColor(Color(0xFF02AAB0));

    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      appBar: AppBarView(),
      drawer: NavDrawer(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color(0xFFFFFFFF),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF53B27F),
        unselectedItemColor: Color(0xFF334D6E),
        onTap: onTapTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_outlined,
            ),
            label: 'Dashboad',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
            ),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_atm_outlined,
            ),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
            ),
            label: 'Devices',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place_outlined,
            ),
            label: 'Map',
          ),
        ],
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
