import 'package:flutter/material.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({
    Key key,
    @required this.actionText,
    @required this.requestText,
  }) : super(key: key);
  final String requestText;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          requestText,
          style: TextStyle(
            color: ThemeColors.black,
            fontSize: 15,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 27,
          width: 86,
          child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Color(0xFF14A09F)),
              onPressed: () {},
              child: Text(
                actionText,
                style: TextStyle(color: Colors.white, fontSize: 11),
              )),
        )
      ],
    );
  }
}
