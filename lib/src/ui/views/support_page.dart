import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/bottomNavigationBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/shared/routes.dart';

class SupportPage extends StatefulWidget {
  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBarView(),
      bottomNavigationBar: BottomNavigationBarView(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 42,
                  width: 161,
                  decoration: BoxDecoration(
                    color: Color(
                      0xff4eb181,
                    ),
                    borderRadius: BorderRadius.circular(
                      4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(
                          0x3d109cf1,
                        ),
                        offset: Offset(
                          0,
                          4,
                        ),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.newConversationPage);
                    },
                    child: Center(
                      child: Text(
                        "New Conversation",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                width: 338,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "OPEN",
                          style: TextStyle(
                            color: Color(
                              0xff14a09f,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "     Request New RFID Card",
                      style: TextStyle(
                        color: Color(
                          0xff323c47,
                        ),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Text(
                      "      Date: December 23, 2018",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      width: 280,
                      child: Center(
                        child: Text(
                          "     Hello Support, I would like to request ....",
                          style: TextStyle(
                            color: Color(
                              0xff707683,
                            ),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                width: 338,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "CLOSED",
                          style: TextStyle(
                            color: Color(
                              0xff14a09f,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "     Update my profile info",
                      style: TextStyle(
                        color: Color(
                          0xff323c47,
                        ),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Text(
                      "      Date: December 23, 2018",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      width: 280,
                      child: Center(
                        child: Text(
                          "     Hello Support, I would like to request ....",
                          style: TextStyle(
                            color: Color(
                              0xff707683,
                            ),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                width: 338,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "CLOSED",
                          style: TextStyle(
                            color: Color(
                              0xff14a09f,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "     Need help with card",
                      style: TextStyle(
                        color: Color(
                          0xff323c47,
                        ),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Text(
                      "      Date: December 23, 2018",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      width: 280,
                      child: Center(
                        child: Text(
                          "     Hello Support, I would like to request ....",
                          style: TextStyle(
                            color: Color(
                              0xff707683,
                            ),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                width: 338,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "CLOSED",
                          style: TextStyle(
                            color: Color(
                              0xff14a09f,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "     Need Second Account",
                      style: TextStyle(
                        color: Color(
                          0xff323c47,
                        ),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Text(
                      "      Date: December 23, 2018",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      width: 280,
                      child: Center(
                        child: Text(
                          "     Hello Support, I would like to request ....",
                          style: TextStyle(
                            color: Color(
                              0xff707683,
                            ),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
