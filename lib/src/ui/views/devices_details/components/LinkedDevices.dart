import 'package:flutter/material.dart';

class LinkedDevices extends StatelessWidget {
  const LinkedDevices({
    Key key,
    this.accountNumber,
    this.accountName,
  }) : super(key: key);
  final String accountNumber;
  final String accountName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            accountNumber,
            style: TextStyle(
              color: Color(
                0xff192a3e,
              ),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),
          ),
          Text(
            accountName,
            style: TextStyle(
              color: Color(
                0xff192a3e,
              ),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
