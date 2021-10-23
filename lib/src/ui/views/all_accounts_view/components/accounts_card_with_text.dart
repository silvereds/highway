import 'package:flutter/material.dart';

import 'accounts_status.dart';

class AccountsCard extends StatelessWidget {
  const AccountsCard({
    Key key,
    @required this.onPressed,
    this.text,
    @required this.alias,
    @required this.accountNumber,
    @required this.type,
    @required this.balance,
    this.status = '',
  }) : super(key: key);

  final void Function() onPressed;
  final String text;
  final String status;
  final String alias;
  final String accountNumber;
  final String type;
  final String balance;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AccountStatus(
                    status: status,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                  Spacer(),
                  Text(
                    balance,
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
      ),
    );
  }
}
