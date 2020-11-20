import 'package:flutter/material.dart';



class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {},
          iconSize: 36,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/HIGHWEH_HORIZONTAL.png',
          fit: BoxFit.contain,
          height: 45,
        ),
        centerTitle: true,
        actions: [CircleAvatar()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFFFFFF),
        type: BottomNavigationBarType.fixed,
       // selectedItemColor: ThemeColors.SelectedItemColor,
     //   unselectedItemColor: ThemeColors.UnSelectedItemColor,
      //  onTap: (v) {
          // Respond to item press.
       //   setState(() => _currentIndex == 0);
     //   },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_on,
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
      ),


     
    );
  }
}