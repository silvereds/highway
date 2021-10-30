import 'package:flutter/material.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

import 'card_content.dart';
import 'card_header.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 2.0,
              )
            ]),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              MainContainer(
                actionText: 'Pay now',
                date: 'December 23, 2018',
                requestText: 'Billing Request',
                text:
                    'Dear customer, we would like to remind you\n that your account CMR26745386-02 still has\n an unpaid ballance of FCFA 900.',
              ),
              SizedBox(
                height: 20,
              ),
              MainContainer(
                actionText: 'View more',
                date: 'December 30, 2018',
                requestText: 'Transaction Succesfull',
                text:
                    'Your payment  of FCFA 1,200 to Jean Paul \n(CMR12354237-02) was completed \nsuccessfully.Your new balance is FCFA 32,200.',
              ),
              SizedBox(
                height: 20,
              ),
              MainContainer(
                actionText: 'Accept',
                date: 'January 10, 2019',
                requestText: 'Peer-to peer request',
                text:
                    'Your payment  of FCFA 1,200 to Jean Paul \n(CMR12354237-02) was completed \nsuccessfully.Your new balance is FCFA 32,200.',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 326,
                height: 89,
                decoration: BoxDecoration(
                  color: Color(0xFFD1D1D1),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(
                        0x3f000000,
                      ),
                      offset: Offset(
                        0,
                        4,
                      ),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "New Message",
                              style: TextStyle(
                                color: ThemeColors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '23 November 2039',
                              style: TextStyle(
                                  color: Color(
                                    0xFF4C5862,
                                  ),
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Text(
                          "Dear customer, we would like to\n remind you that your account \nCMR26745386-02 still has an \nunpaid ballance of FCFA 900.",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({
    Key key,
    @required this.actionText,
    @required this.requestText,
    @required this.date,
    @required this.text,
  }) : super(key: key);
  final String actionText;
  final String requestText;
  final String date;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 326,
      height: 112,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Color(
              0x3f000000,
            ),
            offset: Offset(
              0,
              4,
            ),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          CardHeader(
            actionText: actionText,
            requestText: requestText,
          ),
          CardContent(date: date, text: text),
        ],
      ),
    );
  }
}
