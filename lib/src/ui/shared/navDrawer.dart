import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_outlined,
              size: 30,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(
                color: Color(
                  0xffdadada,
                ),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.chat_outlined),
            title: Text(
              "Support",
              style: TextStyle(
                color: Color(
                  0xffdadada,
                ),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "Settings",
              style: TextStyle(
                color: Color(
                  0xffdadada,
                ),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
            onTap: () => print('Nav'),
          )
        ],
      ),
    );
  }
}
