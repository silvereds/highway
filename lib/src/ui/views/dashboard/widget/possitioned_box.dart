import 'package:flutter/material.dart';

class PossitionedBox extends StatelessWidget {
  const PossitionedBox({
    Key key,
    @required this.color1,
    @required this.color2,
    @required this.text,
  }) : super(key: key);

  final Color color1;
  final Color color2;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      left: 15,
      width: 78,
      height: 78,
      child: Container(
        margin: EdgeInsets.all(4),
        height: 78,
        width: 78,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Color(
                0x23000000,
              ),
              offset: Offset(
                0,
                4,
              ),
              blurRadius: 4,
            ),
            BoxShadow(
              color: Color(
                0x66ff9800,
              ),
              offset: Offset(
                0,
                7,
              ),
              blurRadius: 10,
              spreadRadius: -5,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              color1,
              color2,
            ],
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
