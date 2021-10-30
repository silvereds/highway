import 'package:flutter/material.dart';

class ButtonAliasHistory extends StatelessWidget {
  const ButtonAliasHistory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            child: Center(
                child: FlatButton(
              child: Text(
                "Alias History",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Roboto",
                ),
              ),
              onPressed: () {
                print('Alias History');
              },
            )),
            width: 144,
            height: 41,
            decoration: BoxDecoration(
              color: Color(
                0xff4eb181,
              ),
              borderRadius: BorderRadius.circular(
                3,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(
                    0x234caf50,
                  ),
                  offset: Offset(
                    0,
                    2,
                  ),
                  blurRadius: 4,
                ),
                BoxShadow(
                  color: Color(
                    0x334caf50,
                  ),
                  offset: Offset(
                    0,
                    3,
                  ),
                  blurRadius: 1,
                  spreadRadius: -2,
                ),
                BoxShadow(
                  color: Color(
                    0x1e4caf50,
                  ),
                  offset: Offset(
                    0,
                    1,
                  ),
                  blurRadius: 5,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
