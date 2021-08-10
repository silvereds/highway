import 'package:flutter/material.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

import 'package:mobile/src/ui/views/dashboard/widget/possitioned_box.dart';
import 'package:mobile/src/ui/views/recharge_account.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key key,
    @required this.name,
    @required this.type,
    @required this.amount,
    @required this.color1,
    @required this.color2,
    @required this.text,
    @required this.amountTextColor,
    @required this.newTransferText,
    this.press,
  }) : super(key: key);

  final String name;
  final String type;
  final String amount;
  final Color color1;
  final Color color2;
  final String text;
  final Color amountTextColor;

  final String newTransferText;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      margin: EdgeInsets.fromLTRB(30, 30, 30, 8),
      height: 170,
      width: 323,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 323,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Color(
                    0x23000000,
                  ),
                  offset: Offset(
                    0,
                    1,
                  ),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: name,
                            style: TextStyle(
                                color: ThemeColors.LightText, fontSize: 14)),
                        TextSpan(
                          text: type,
                          style: TextStyle(
                            color: ThemeColors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    amount,
                    style: TextStyle(
                      color: amountTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Expanded(child: Divider()),
                  SizedBox(height: 5),
                  NewTransferButton(
                    press: press,
                    newTransferText: newTransferText,
                  ),
                ],
              ),
            ),
          ),
          PossitionedBox(color1: color1, color2: color2, text: text),
        ],
      ),
    );
  }
}

class NewTransferButton extends StatelessWidget {
  const NewTransferButton({
    Key key,
    @required this.press,
    @required this.newTransferText,
  }) : super(key: key);

  final VoidCallback press;
  final String newTransferText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: press,
          child: Text(
            newTransferText,
            style: TextStyle(
              color: Color(
                0xff219653,
              ),
              fontSize: 13,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/rechargeAccountPage');
          },
          child: Text(
            'Recharge',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
            ),
          ),
        ),
      ],
    );
  }
}


//  () {
//                           Navigator.pushNamed(context, '/tansferMoneyPage');
//                         }