import 'package:flutter/material.dart';
import 'package:mobile/src/ui/views/accounts_detail_view.dart';
import 'package:mobile/src/ui/views/all_accoutsView.dart';
import 'package:mobile/src/ui/views/block_accountView.dart';
import 'package:mobile/src/ui/views/dashboard.dart';
import 'package:mobile/src/ui/views/transactions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex;

  final List<Widget> _children = <Widget>[
    DashBoard(),
    AccountsView(),
    TransactionsView(),
    AccountsDetailsView(),
    BlockAccountView(),
  ];

  // getBody() {
  //   if (this._currentIndex == 0) {
  //     Navigator.pushNamed(context, AppRoutes.loginPage);
  //   } else if (this._currentIndex == 1) {
  //      Navigator.pushNamed(context, AppRoutes.loginPage);
  //   } else {
  //     Navigator.pushNamed(context, AppRoutes.loginPage);
  //   }
  // }

  // void onTapHandler(int index) {
  //   this.setState(() {
  //     this._currentIndex = index;
  //   });
  //   getBody();
  // }

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 18,
        backgroundColor: Color(0xFFFFFFFF),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF53B27F),
        unselectedItemColor: Color(0xFF334D6E),
        onTap: onTapTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_outlined,
              size: 30,
            ),
            label: 'Dashboad',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              size: 30,
            ),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_atm_outlined,
              size: 30,
            ),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              size: 30,
            ),
            label: 'Devices',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place_outlined,
              size: 30,
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
