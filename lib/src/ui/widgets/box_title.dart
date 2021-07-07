import 'package:flutter/material.dart';

class BoxTitle extends StatelessWidget {
  final String title;
  const BoxTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -40,
      left: 15,
      right: 15,
      height: 70,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
                0x66E91E63,
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
              Color(
                0xFF00CDAC,
              ),
              Color(
                0xFF4EB181,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
