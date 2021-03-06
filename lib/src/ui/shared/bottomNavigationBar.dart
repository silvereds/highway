import 'package:flutter/material.dart';
import 'package:mobile/src/ui/views/account_details/accounts_detail_view.dart';
import 'package:mobile/src/ui/views/all_accounts_view/all_accoutsView.dart';
import 'package:mobile/src/ui/views/block_accountView.dart';
import 'package:mobile/src/ui/views/dashboard/dashboard.dart';
import 'package:mobile/src/ui/views/transactions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomNavigationBarView extends StatefulWidget {
  @override
  _BottomNavigationBarViewState createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
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
  //   } else if (this._currenatIndex == 1) {
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
            ),
            label: AppLocalizations.of(context).dashboard,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
            ),
            label: AppLocalizations.of(context).accounts,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_atm_outlined,
            ),
            label: AppLocalizations.of(context).transactions,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
            ),
            label: AppLocalizations.of(context).devices,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place_outlined,
            ),
            label: AppLocalizations.of(context).map,
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
