import 'package:flutter/material.dart';
import 'package:mobile/shared/navDrawer.dart';
import 'package:mobile/shared/bottomNavigationBar.dart';
import 'package:mobile/shared/appBar.dart';

class AllDevicesPage extends StatefulWidget {
  @override
  _AllDevicesPageState createState() => _AllDevicesPageState();
}

class _AllDevicesPageState extends State<AllDevicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: Color(0xFFF5F6F8),
      appBar: AppBarView(),
      bottomNavigationBar: BottomNavigationBarView(),
      body: Stack(children: [
        Positioned(
          top: 20,
          right: 30,
          child: Container(
            width: 127,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                3,
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(
                    0xff00cdac,
                  ),
                  Color(
                    0xff4eb181,
                  ),
                ],
                stops: [
                  0,
                  0.98,
                ],
              ),
            ),
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  IconButton(
                    icon: Icon(Icons.print),
                    color: Color(0xFFFFFFFF),
                    onPressed: () {},
                  ),
                  Text("Print",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontFamily: 'Poppins'))
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Container(
              height: 450,
              width: 324,
              margin: EdgeInsets.fromLTRB(16, 55, 16, 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Color(
                      0x23000000,
                    ),
                    offset: Offset(
                      0,
                      1,
                    ),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  SingleChildScrollView(
                                      child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Devices",
                          style: TextStyle(
                            color: Color(
                              0xff3c4858,
                            ),
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Roboto",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    child: RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'ABC00987 ',
                                            style: TextStyle(
                                              color: Color(
                                                0xff99a6b7,
                                              ),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Jane Doe',
                                            style: TextStyle(
                                              color: Color(
                                                0xff99a6b7,
                                              ),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    width: 95,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                       color: Color(
      0xff4eb181,
    ),
                                        borderRadius: BorderRadius.circular(4)),
                                    height: 12,
                                    width: 73,
                                    child: Center(
                                        child: Text(
                                      "Active",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: SizedBox(
                                      child: Text(
                                        "RFID CARD",
                                        style: TextStyle(
                                          color: Color(
                                            0xff334d6e,
                                          ),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      width: 88,
                                      height: 19,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),



                Divider(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    child: RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'DEF00345',
                                            style: TextStyle(
                                              color: Color(
                                                0xff99a6b7,
                                              ),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' Peter Ndi',
                                            style: TextStyle(
                                              color: Color(
                                                0xff99a6b7,
                                              ),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    width: 95,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(
                                          0xFFF44336,
                                        ),
                                        borderRadius: BorderRadius.circular(4)),
                                    height: 12,
                                    width: 73,
                                    child: Center(
                                        child: Text(
                                      "Blocked",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      "CARD READER",
                                      style: TextStyle(
                                        color: Color(
                                          0xff334d6e,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),



                        
                Divider(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    child: RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'DFG78000 ',
                                            style: TextStyle(
                                              color: Color(
                                                0xff99a6b7,
                                              ),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Grace Che',
                                            style: TextStyle(
                                              color: Color(
                                                0xff99a6b7,
                                              ),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    width: 95,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(
                                          0xFF4EB181,
                                        ),
                                        borderRadius: BorderRadius.circular(4)),
                                    height: 12,
                                    width: 73,
                                    child: Center(
                                        child: Text(
                                      "Active",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      "RFID CARD",
                                      style: TextStyle(
                                        color: Color(
                                          0xff334d6e,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        
                Divider(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    child: RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'CVB09908 ',
                                            style: TextStyle(
                                              color: Color(
                                                0xff99a6b7,
                                              ),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Jane Doe',
                                            style: TextStyle(
                                              color: Color(
                                                0xff99a6b7,
                                              ),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    width: 95,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                         color: Color(
            0xff4eb181,
          ),
                                        borderRadius: BorderRadius.circular(4)),
                                    height: 12,
                                    width: 73,
                                    child: Center(
                                        child: Text(
                                      "Active",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      "RFID CARD",
                                      style: TextStyle(
                                        color: Color(
                                          0xff334d6e,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),










                      ],
                    ),
                  ),
                  Positioned(
                    top: -30,
                    left: 15,
                    height: 65,
                    width: 63,
                    child: Container(
                      width: 49.8,
                      height: 51.39,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(
                              0x23000000,
                            ),
                            offset: Offset(
                              0,
                              4,
                            ),
                            blurRadius: 4,
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(
                              0xff00cdac,
                            ),
                            Color(
                              0xff4eb181,
                            ),
                          ],
                          stops: [
                            0,
                            0.98,
                          ],
                        ),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.credit_card,
                        size: 30,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ],
              )),
        ),
      ]),
    );
  }
}
