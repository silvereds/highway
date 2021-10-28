import 'package:flutter/material.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

class HighwehButton extends StatelessWidget {
  HighwehButton(
      {Key key,
      @required this.onPress,
      @required this.text,
      @required this.height,
      @required this.color,
      @required this.width})
      : super(key: key);
  final VoidCallback onPress;
  final String text;
  final double height;
  final Color color;

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16, fontFamily: 'Poppins', color: Color(0xFFFFFFFF)),
        ),
        style: TextButton.styleFrom(
          primary: ThemeColors.Buttons,
          backgroundColor: color,
          onSurface: Colors.grey,
        ),
      ),
    );
  }
}

class ButtonPrint extends StatelessWidget {
  const ButtonPrint({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.print,
              color: Color(0xFFFFFFFF),
            ),
            Text(text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                )),
          ],
        ));
  }
}
