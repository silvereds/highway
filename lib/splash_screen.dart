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
                          fontFamily: 'Roboto',
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
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Envoyez gratuitement jusqu’à 100 000 FCFA  à vos proches sans frais.",
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 12,
                                    height: 1.5,
                                    fontFamily: 'Roboto',
                                  ),
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
                                Text("Manage Your Devices",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                    )),
                                SizedBox(height: 20),
                                Text(
                                  "Gérez votre carte de paiement pour vos dépenses et/ou votre lecteur de paiement pour vos recettes.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 12,
                                    height: 1.5,
                                    fontFamily: 'Roboto',
                                  ),
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
                                Text("Manage Your E-wallet Account",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                    )),
                                SizedBox(height: 20),
                                Text(
                                  "Réaliser vos transactions, consultez votre solde et suivez l’historique de vos dépenses.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 12,
                                    height: 1.5,
                                    fontFamily: 'Roboto',
                                  ),
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
                                  Navigator.pushNamed(context, '/firstlogin-Email');
                                  
                                },
                                color: ThemeColors.Buttons,
                                textColor: Colors.white,
                                child: Text("Next", style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: 'Poppins' ),)),
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
