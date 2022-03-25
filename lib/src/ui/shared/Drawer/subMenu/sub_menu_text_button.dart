import 'package:flutter/material.dart';

class SubMenuTextButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final double fontSize;

  const SubMenuTextButton({
    Key key,
    @required this.text,
    @required this.onTap,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            decoration: TextDecoration.underline,
            fontFamily: "Poppins",
            color: Color(0xFFDADADA),
          ),
        ),
      ),
    );
  }
}
