import 'package:flutter/material.dart';

class DefaultElevatedButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color backgroundColor;
  final TextStyle textStyle;
  const DefaultElevatedButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.backgroundColor,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: backgroundColor,
        ),
      ),
    );
  }
}
