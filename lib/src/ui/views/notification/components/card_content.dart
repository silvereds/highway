import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    Key key,
    @required this.date,
    @required this.text,
  }) : super(key: key);
  final String date;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              Text(
                date,
                style: TextStyle(
                    color: Color(
                      0xFF4C5862,
                    ),
                    fontSize: 12),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30),
              Text(
                text,
                style: TextStyle(
                    color: Color(
                      0xFF4C5862,
                    ),
                    fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
