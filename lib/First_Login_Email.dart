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
            body: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
            ))));
  }
}
