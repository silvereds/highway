import 'package:flutter/material.dart';

import 'accounts_status.dart';

class AccountsCard extends StatelessWidget {
  const AccountsCard({
    Key key,
    @required this.press,
    this.text,
    @required this.alias,
    @required this.accountNumber,
    @required this.type,
    @required this.amount,
  }) : super(key: key);

  final VoidCallback press;
  final String text;

  final String alias;
  final String accountNumber;
  final String type;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AccountStatus(
                  status: 'Active',
                ),
                SizedBox(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Color(
                        0xff14a09f,
                      ),
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins",
                    ),
                  ),
                  width: 65.9879150390625,
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      accountNumber,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(height: 5),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: alias,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: Color(0xFF000000),
                                fontFamily: 'Poppins'),
                          ),
                          TextSpan(
                            text: type,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              color: Color(0xFF333333),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Text(
                  amount,
                  style: TextStyle(
                    color: Color(
                      0xff27ae60,
                    ),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
