import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';

class LoginEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red])),
        child: Scaffold(
          backgroundColor: ThemeColors.background,
          appBar: AppBar(
            title: Image.asset('assets/HIGHWEH_HORIZONTAL.png'),
            backgroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 20),
            child: Container(
              height: 436,
              width: 327,
              color: Colors.white,
              child: Center(

              )
            ),
          ),
        ));
  }
}
