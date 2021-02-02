import 'package:flutter/material.dart';
import 'package:mobile/shared/routes.dart';

class BottomNavigationBarView extends StatefulWidget {
  @override
  _BottomNavigationBarViewState createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  int _currentIndex = 0;

  // static const List<Widget> _widgetOption = <Widget> [

 

  // ];
 

  getBody() {
    if (this._currentIndex == 0) {
      Navigator.pushNamed(context, AppRoutes.loginPage);
    } else if (this._currentIndex == 1) {
       Navigator.pushNamed(context, AppRoutes.loginPage);
    } else {
      Navigator.pushNamed(context, AppRoutes.loginPage);
    }
  }

  void onTapHandler(int index) {
    this.setState(() {
      this._currentIndex = index;
    });
    getBody();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedFontSize: 18,
      backgroundColor: Color(0xFFFFFFFF),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF53B27F),
      unselectedItemColor: Color(0xFF334D6E),
      onTap: (int index) {
       // Respond to item press.
       this.onTapHandler(index);
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_outlined,
              size: 30,
            ),
            label: ('Dashboad')),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              size: 30,
            ),
            label: 'Accounts'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.local_atm_outlined,
              size: 30,
            ),
            label: 'Transactions'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              size: 30,
            ),
            label: 'Devices'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.place_outlined,
              size: 30,
            ),
            label: 'Map'),
      ],
    );
  }
}
