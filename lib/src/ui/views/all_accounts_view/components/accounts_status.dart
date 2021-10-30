import 'package:flutter/material.dart';

class AccountStatus extends StatelessWidget {
  final String status;

  const AccountStatus({
    Key key,
    this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: status == "Active".toUpperCase()
            ? const Color(0xFF4EB181)
            : Colors.red,
        borderRadius: BorderRadius.circular(4),
      ),
      height: 15.81,
      width: 93.43,
      child: Center(
        child: SizedBox(
          child: Text(
            status,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
            ),
            textAlign: TextAlign.center,
          ),
          width: 140,
          height: 22,
        ),
      ),
    );
  }
}
