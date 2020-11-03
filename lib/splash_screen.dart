import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.background,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: ThemeColors.white,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "WELCOME TO HIGHWEH",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox( height: 10),
                  Row(
                    children: [
                      Align(
                          alignment: Alignment.topLeft, child: Icon(Icons.star)),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Transfer Money",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
                            SizedBox(height: 10),
                            Text(
                                "Send upto 50,000FCFA to your loved ones without charges. Oh ye, it is free!! "),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Manage Your Devices",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
                            SizedBox(height: 10),
                            Text(
                                "Manage your cards, your card readers. Assign them to your loved ones,to your acquaintances as you please and follow in real time all the transactions made on/with your devices. "),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Manage Your E-wallet Accout",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
                            SizedBox(height: 10),
                            Text(
                                "View your balance and transaction history. Manage your expenses and revenues.Recharge your acccounts via your mobile money accounts(MTN,Orange,Express Union, etc) or directly via a HighWeh branch or even at a private individual near you.Make your cash withdrawals directly from a HighWeh branch or from an individual near you "),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          side: BorderSide(color: Colors.green)),
                      onPressed: () {},
                      color: Colors.green,
                      textColor: Colors.white,
                      child: Text("Next", style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
