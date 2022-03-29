import 'package:flutter/material.dart';

class DrawerProfileInfo extends StatelessWidget {
  const DrawerProfileInfo(
      {@required this.image,
      @required this.label,
      @required this.icon,
      Key key})
      : super(key: key);

  final String image;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              label,
              style: TextStyle(
                color: Color(
                  0xffdadada,
                ),
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(image),
            ),
          ),
        ],
      )
    ]);
  }
}