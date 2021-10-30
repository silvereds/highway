import 'package:flutter/material.dart';

class LinkedDevicesLable extends StatelessWidget {
  const LinkedDevicesLable({
    Key key,
    @required this.accountNumber,
    @required this.name,
  }) : super(key: key);

  final String accountNumber;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(accountNumber,
            style: TextStyle(
              color: Color(
                0xff323c47,
              ),
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            )),
        Text(name,
            style: TextStyle(
              color: Color(
                0xff323c47,
              ),
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            )),
      ],
    );
  }
}
