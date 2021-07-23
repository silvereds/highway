import 'package:flutter/material.dart';

class DefaultElevatedButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const DefaultElevatedButton({
    Key key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: const Color(0xff00cdac),
        ),
      ),
    );
  }
}
