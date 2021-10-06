import 'package:flutter/material.dart';

class LinkedDevices extends StatelessWidget {
  const LinkedDevices({
    Key key,
    this.id,
    this.type,
    this.alias,
  }) : super(key: key);

  final String id, type, alias;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Container(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              id,
              style: TextStyle(
                color: Color(
                  0xff333333,
                ),
                fontSize: 13,
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
              ),
            ),
            // Text(
            //   type,
            //   style: TextStyle(
            //     color: Color(
            //       0xff333333,
            //     ),
            //     fontSize: 13,
            //     fontWeight: FontWeight.w700,
            //     fontFamily: "Poppins",
            //   ),
            // ),
            Text(
              alias,
              style: TextStyle(
                color: Color(
                  0xff333333,
                ),
                fontSize: 13,
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(
                0x3f000000,
              ),
              offset: Offset(
                0,
                4,
              ),
              blurRadius: 4,
            ),
          ],
        ),
      ),
    );
  }
}
