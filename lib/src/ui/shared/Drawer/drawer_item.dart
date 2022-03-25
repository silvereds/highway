import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem(
      {@required this.icon,
      @required this.label,
      @required this.index,
      @required this.onTap,
      Key key})
      : super(key: key);

  final IconData icon;
  final String label;
  final int index;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon,
          color: Color(0xFFDADADA),
          size: 30,
        ),
        title: Text(
          label,
          style: TextStyle(
            color: Color(
              0xffdadada,
            ),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
          ),
        ),
        onTap: () => onTap(index) //{
        //   Navigator.pop(context);
        //   Navigator.pushNamed(context, '/settingPreference');
        //   // ignore: unnecessary_statements
        // },
        );
  }
}
