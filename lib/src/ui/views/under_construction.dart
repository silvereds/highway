import 'package:flutter/material.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

class UnderConstruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/images/HIGHWEH_HORIZONTAL.png',
            fit: BoxFit.contain,
            height: 45,
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(20),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    ThemeColors.Background,
                    ThemeColors.LightBackground
                  ]),
              image: DecorationImage(
                image: AssetImage("assets/images/Underconstruction.png"),
                fit: BoxFit.fill,
              )),
        )),
      ),
    );
  }
}
