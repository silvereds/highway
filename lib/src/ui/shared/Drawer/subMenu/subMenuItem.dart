import 'package:flutter/material.dart';

class SubMenuItem extends StatelessWidget {
  final String text;
  final Function onTap;

  const SubMenuItem({
    Key key,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFDADADA),
              ),
              height: 10,
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SizedBox(
                width: 200,
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    fontFamily: "Poppins",
                    color: Color(0xFFDADADA),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
