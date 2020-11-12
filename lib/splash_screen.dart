import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:mobile/Login_views/First_Login_Email.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [ThemeColors.Background, ThemeColors.LightBackground])),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.white,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "WELCOME TO HIGHWEH",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          color: ThemeColors.Welcome,
                        ),
                      ),
                      SizedBox(height: 30),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Transfer Money",
                                  style: TextStyle(color: ThemeColors.black, fontSize: 16, ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Send upto 50,000 FCFA to your loved ones without charges.. oh yes, it is free!!",
                                    style: TextStyle(color: ThemeColors.grey, fontSize: 12,  height: 1.5,fontFamily: 'Roboto' ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Manage Your Devices",
                                   style: TextStyle(color: ThemeColors.black, fontSize: 16, )
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Manage your cards, your card readers. Assign them to your loved ones, to your acquaintances as you please and follow in real time all the transactions made on/with your devices.",
                                  textAlign: TextAlign.start,
                                   style: TextStyle(color: ThemeColors.grey, fontSize: 12,  height: 1.5 ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Icon(
                              Icons.group,
                              color: ThemeColors.Group,
                            ),
                            width: 40,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Manage Your E-wallet Account",
                                   style: TextStyle(color: ThemeColors.black, fontSize: 16, )
                                  
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "View your balance and transaction history. Manage your expenses and revenues.Recharge your acccounts via your mobile money accounts(MTN,Orange,Express Union, etc) or directly via a HighWeh branch or even at a private individual near you.Make your cash withdrawals directly from a HighWeh branch or from an individual near you with better fees than HighWeh",
                                  textAlign: TextAlign.start,
                                  
                                   style: TextStyle(color: ThemeColors.grey, fontSize: 12, height: 1.5  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
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
                                color: ThemeColors.Buttons,
                                textColor: Colors.white,
                                child: Text("Next")),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
