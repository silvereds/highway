import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 812,
      width: 375,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.red])),
      child: Scaffold(
        backgroundColor: ThemeColors.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Container(
              height: 683,
              color: ThemeColors.white,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Text(
                      "WELCOME TO HIGHWEH",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: ThemeColors.background,
                        fontFamily: "poppin",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.timeline,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text("Transfer Money",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 55, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Send upto 50,000FCFA to your loved ones without charges. Oh ye, it is free!! ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey, fontSize: 12, height: 1.6),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.code,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text("Manage Your Devices",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 55, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Manage your cards, your card readers. Assign them to your loved ones,to your acquaintances as you please and follow in real time all the transactions made on/with your devices. ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey, fontSize: 12, height: 1.6),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.group,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Flexible(
                      child: Text("Manage Your E-wallet Account",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 55, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "View your balance and transaction history. Manage your expenses and revenues.Recharge your acccounts via your mobile money accounts(MTN,Orange,Express Union, etc) or directly via a HighWeh branch or even at a private individual near you.Make your cash withdrawals directly from a HighWeh branch or from an individual near you  ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey, fontSize: 12, height: 1.6),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    child: FlatButton(
                      minWidth: 133,
                      height: 40.02,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.green)),
                      onPressed: () {},
                      color: Colors.green,
                      textColor: Colors.white,
                      child: Text("Next", style: TextStyle(fontSize: 13)),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
