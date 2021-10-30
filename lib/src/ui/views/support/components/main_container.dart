import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    Key key,
    this.process,
    this.topic,
    this.date,
    this.message,
  }) : super(key: key);

  final String process;
  final String topic;
  final String date;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: 338,
      height: 110,
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 80,
              ),
              Text(
                process,
                style: TextStyle(
                  color: Color(
                    0xff14a09f,
                  ),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topic,
                style: TextStyle(
                  color: Color(
                    0xff323c47,
                  ),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(
                width: 280,
                child: Text(
                  message,
                  style: TextStyle(
                    color: Color(
                      0xff707683,
                    ),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
