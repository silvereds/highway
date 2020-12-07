import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:mobile/Profile_screens/user_profile.dart';
import 'package:mobile/Login_views/under_construction.dart';


class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UnderConstruction()),
            );
          },
          iconSize: 36,
        ),
        title: Image.asset(
          'assets/images/HIGHWEH_HORIZONTAL.png',
          fit: BoxFit.contain,
          height: 45,
        ),
        centerTitle: true,
        actions: [ Container(
            margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfile()),
                );
              },
              child: CircleAvatar(
                radius: 25,
                child: Container(
                    decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                  ),
                )),
              ),
            ),
          )],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color(0xFFFFFFFF),
        type: BottomNavigationBarType.fixed,
          selectedFontSize: 18,
        selectedItemColor: ThemeColors.SelectedItemColor,
        unselectedItemColor: ThemeColors.UnSelectedItemColor,
        onTap: (index) {
          //  Respond to item press.
          setState(() => _currentIndex = index);
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
      ),
      body: Container(
        color: Color(0xFFF5F6F8),
      
        padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Change Password',
                              style: TextStyle(
                                fontSize: 26,
                                color: ThemeColors.TextGreen,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Old Password',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF14A09F),
                                   fontFamily: 'Poppins',
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                            Divider(color: Colors.grey),
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'New password',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF14A09F),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                            Divider(color: Colors.grey),
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Confirm password',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF14A09F),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                            Divider(color: Colors.grey),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(height: 50),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                                minWidth: 97,
                                height: 37,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: BorderSide(color: ThemeColors.Buttons),
                                ),
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => LoginEmail()),
                                  //  );
                                },
                                color: Color(0xFFF44336),
                                textColor: Colors.white,
                                child: Text("Cancel")),
                            SizedBox(
                              width: 20,
                            ),
                            FlatButton(
                                minWidth: 86,
                                height: 31,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: BorderSide(color: ThemeColors.Buttons),
                                ),
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => LoginEmail()),
                                  //  );
                                },
                                color: ThemeColors.Buttons,
                                textColor: Colors.white,
                                child: Text("Save")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
