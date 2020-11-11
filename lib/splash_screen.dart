import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:mobile/Login_views/First_Login_Email.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
          color: ThemeColors.Background,
          child: Center(
            child: Stack(
              alignment: AlignmentDirectional.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                 // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Expanded(
                    
                    child: Column(
                      children: [
                        Text(
                          "WELCOME TO HIGHWEH",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: ThemeColors.Background,
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.timeline,
                                color: ThemeColors.Timeline,
                              ),
                              width: 30,
                            ),
                            Text(
                              "Transfer Money",
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Send upto 50,000 FCFA to your loved ones without charges.. oh yes, it is free!!",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.code,
                                color: ThemeColors.Code,
                              ),
                              width: 30,
                            ),
                            Text(
                              "Manage Your Devices",
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Manage your cards, your card readers. Assign them to your loved ones, to your acquaintances as you please and follow in real time all the transactions made on/with your devices.",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.group,
                                color: ThemeColors.Group,
                              ),
                              width: 30,
                            ),
                            Text(
                              "Manage Your E-wallet Account",
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "View your balance and transaction history. Manage your expenses and revenues.Recharge your acccounts via your mobile money accounts(MTN,Orange,Express Union, etc) or directly via a HighWeh branch or even at a private individual near you.Make your cash withdrawals directly from a HighWeh branch or from an individual near you with better fees than HighWeh",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              child: FlatButton(
                                  minWidth: 133,
                                  height: 40.02,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.green),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginEmail()),
                                    );
                                  },
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  child: Text("Next")),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
