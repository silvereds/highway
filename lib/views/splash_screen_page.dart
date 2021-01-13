import 'package:flutter/material.dart';
import 'package:mobile/controllers/splash_screen_controller.dart';
import 'package:mobile/shared/const_color.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  SplashScreenController _splashScreenController = new SplashScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(
                    0xff02aab0,
                  ),
                  Color(
                    0xff00cdac,
                  ),
                ],
              ),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 50, 30, 50),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        child: Text(
                          "WELCOME TO HIGHWEH ",
                          style: TextStyle(
                            color: Color(
                              0xff4eb181,
                            ),
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        width: 327,
                        height: 97,
                      ),
                      SizedBox(height: 30),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Icon(
                                    Icons.timeline,
                                    color: ThemeColors.Timeline,
                                  ),
                                  width: 40,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Transfer Money ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                        width: 115,
                                      ),
                                      SizedBox(height: 10),
                                      SizedBox(
                                        child: Text(
                                          "Send free up to 100,000 FCFA to your loved ones free of charge",
                                          style: TextStyle(
                                            color: Color(
                                              0xff999999,
                                            ),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                        width: 207,
                                        // height: 9,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Icon(
                                    Icons.code,
                                    color: ThemeColors.Code,
                                  ),
                                  width: 40,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Manage Your Devices",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                        width: 160,
                                        height: 18,
                                      ),
                                      SizedBox(height: 10),
                                      SizedBox(
                                        child: Text(
                                          "Manage your payment card for your expenses and / or your payment reader for your receipts.",
                                          style: TextStyle(
                                            color: Color(
                                              0xff999999,
                                            ),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                        width: 228.54,
                                        height: 81.09,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Icon(Icons.group,
                                      color: Color(0xFF4CAF50)),
                                  width: 40,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Manage Your E-wallet Account",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                        width: 222.15,
                                        // height: 17.51,
                                      ),
                                      SizedBox(height: 10),
                                      SizedBox(
                                        child: Text(
                                          "Carry out your transactions, consult your balance and follow your spending history",
                                          style: TextStyle(
                                            color: Color(
                                              0xff999999,
                                            ),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                        width: 281.32,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: FlatButton(
                            minWidth: 133,
                            height: 40.02,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.green),
                            ),
                            onPressed: () {
                              _splashScreenController.isUserLoggedIn().then(
                                  (sessionExists) => _splashScreenController
                                      .navigateToNextPage(
                                          context, sessionExists));
                            },
                            color: ThemeColors.Buttons,
                            textColor: Colors.white,
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Poppins'),
                            )),
                      )
                    ]),
              ),
            )));
  }
}
