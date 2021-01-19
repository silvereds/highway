import 'package:flutter/material.dart';

import 'package:mobile/shared/navDrawer.dart';
import 'package:mobile/shared/bottomNavigationBar.dart';
import 'package:mobile/shared/appBar.dart';
import 'package:mobile/shared/routes.dart';

class DeviceDetailsPage extends StatefulWidget {
  @override
  _DeviceDetailsPageState createState() => _DeviceDetailsPageState();
}

class _DeviceDetailsPageState extends State<DeviceDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: Color(0xFFF5F6F8),
      appBar: AppBarView(),
      bottomNavigationBar: BottomNavigationBarView(),
      body: SingleChildScrollView(
              child: Container(
            margin: EdgeInsets.fromLTRB(10, 35, 10, 15),
            height: 700,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                6,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(
                    0x23000000,
                  ),
                  blurRadius: 4,
                  offset: Offset(
                    0,
                    1,
                  ),
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 42,
                        width: 99,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(Icons.keyboard_arrow_left_outlined),
                              color: Color(0xFFFFFFFF),
                              onPressed: () {},
                            ),
                            Text("Back",
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    // fontSize: 14,
                                    fontFamily: 'Poppins'))
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(
                            0xff4eb181,
                          ),
                          borderRadius: BorderRadius.circular(
                            3,
                          ),
                        ),
                      ),
                      Container(
                        height: 42,
                        width: 127,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.print),
                              color: Color(0xFFFFFFFF),
                              onPressed: () {},
                            ),
                            Text("Print",
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    // fontSize: 14,
                                    fontFamily: 'Poppins'))
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(
                            0xff4eb181,
                          ),
                          borderRadius: BorderRadius.circular(
                            3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 15),
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 70,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Device ID ',
                                        style: TextStyle(
                                          color: Color(
                                            0xff818e9b,
                                          ),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'RF00987',
                                        style: TextStyle(
                                          color: Color(
                                            0xff192a3e,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 85,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Alias Name ',
                                        style: TextStyle(
                                          color: Color(
                                            0xff818e9b,
                                          ),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Peter Ndi',
                                        style: TextStyle(
                                          color: Color(
                                            0xff192a3e,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 75,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Device PIN',
                                        style: TextStyle(
                                          color: Color(
                                            0xff818e9b,
                                          ),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' 0890',
                                        style: TextStyle(
                                          color: Color(
                                            0xff192a3e,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 120,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Alias Number',
                                        style: TextStyle(
                                          color: Color(
                                            0xff818e9b,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' +237 85940321',
                                        style: TextStyle(
                                          color: Color(
                                            0xff192a3e,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 120,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Device Type',
                                        style: TextStyle(
                                          color: Color(
                                            0xff818e9b,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' RFID CARD',
                                        style: TextStyle(
                                          color: Color(
                                            0xff192a3e,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Center(
                                  child: FlatButton(
                                child: Text(
                                  "Chage PIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                  ),
                                ),
                                onPressed: () {
                                  print('Change PIN');
                                },
                              )),
                              width: 144,
                              height: 41,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xff4eb181,
                                ),
                                borderRadius: BorderRadius.circular(
                                  3,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(
                                      0x234caf50,
                                    ),
                                    offset: Offset(
                                      0,
                                      2,
                                    ),
                                    blurRadius: 4,
                                  ),
                                  BoxShadow(
                                    color: Color(
                                      0x334caf50,
                                    ),
                                    offset: Offset(
                                      0,
                                      3,
                                    ),
                                    blurRadius: 1,
                                    spreadRadius: -2,
                                  ),
                                  BoxShadow(
                                    color: Color(
                                      0x1e4caf50,
                                    ),
                                    offset: Offset(
                                      0,
                                      1,
                                    ),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Date Issued: ',
                                      style: TextStyle(
                                        color: Color(
                                          0xff818e9b,
                                        ),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 12/12/2020',
                                      style: TextStyle(
                                        color: Color(
                                          0xff323c47,
                                        ),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Status: ',
                                      style: TextStyle(
                                        color: Color(
                                          0xff818e9b,
                                        ),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ACTIVE',
                                      style: TextStyle(
                                        color: Color(
                                          0xff2ed47a,
                                        ),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 160,
                  width: 326,
                  margin: EdgeInsets.fromLTRB(10, 10, 16, 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      6,
                    ),
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
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Center(
                              child: Text(
                            "Linked Account",
                            style: TextStyle(
                              color: Color(
                                0xff3c4858,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Roboto",
                            ),
                          )),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Account Number",
                                    style: TextStyle(
                                      color: Color(
                                        0xff323c47,
                                      ),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    )),
                                Text("Account ",
                                    style: TextStyle(
                                      color: Color(
                                        0xff323c47,
                                      ),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    )),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "CMR1235723609-01",
                                  style: TextStyle(
                                    color: Color(
                                      0xff192a3e,
                                    ),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                Text(
                                  "Jane Doe ",
                                  style: TextStyle(
                                    color: Color(
                                      0xff192a3e,
                                    ),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: -25,
                        left: 15,
                        height: 65,
                        width: 63,
                        child: Container(
                          width: 48,
                          height: 50,
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
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Container(
                                    child: Center(
                                        child: FlatButton(
                                      child: Text(
                                        "Alias History",
                                       style: TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w300,
    fontFamily: "Roboto",
  ),
                                      ),
                                      onPressed: () {
                                        print('Alias History');
                                      },
                                    )),
                                    width: 144,
                                    height: 41,
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xff4eb181,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        3,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0x234caf50,
                                          ),
                                          offset: Offset(
                                            0,
                                            2,
                                          ),
                                          blurRadius: 4,
                                        ),
                                        BoxShadow(
                                          color: Color(
                                            0x334caf50,
                                          ),
                                          offset: Offset(
                                            0,
                                            3,
                                          ),
                                          blurRadius: 1,
                                          spreadRadius: -2,
                                        ),
                                        BoxShadow(
                                          color: Color(
                                            0x1e4caf50,
                                          ),
                                          offset: Offset(
                                            0,
                                            1,
                                          ),
                                          blurRadius: 5,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20,)
                     ],
                   ),
                
                 ),
                   SizedBox(height: 20,),
                 

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                                 SizedBox(width: 8,),
                                FlatButton(
                                    minWidth: 128,
                                    height: 37,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                  
                                    ),
                                    onPressed: () {
                                      print('Block Device');
                                    },
                                    color: Color(0xFFF44336),
                                    textColor: Colors.white,
                                    child: Text(
                                      "Block Device",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    )),
                                SizedBox(
                                  width: 20,
                                ),
                                FlatButton(
                                    minWidth: 128,
                                    height: 40,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                 
                                    ),
                                    onPressed: () {
                                     Navigator.pushNamed(context, AppRoutes.changeDevicePage);
                                    },
                                    color: Color(0xFF4EB181),
                                    textColor: Colors.white,
                                    child: Text(
                                      "Change Alias",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                      ),
                                    ))
                              ],
                            ),
                 ),
              ],
            )),
      ),
    );
  }
}
