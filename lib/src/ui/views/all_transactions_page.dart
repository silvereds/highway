import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/bottomNavigationBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/shared/routes.dart';

class AllTransactionsPage extends StatefulWidget {
  @override
  _AllTransactionsPageState createState() => _AllTransactionsPageState();
}

class _AllTransactionsPageState extends State<AllTransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      // drawer: NavDrawer(),
      // appBar: AppBarView(),
      // bottomNavigationBar: BottomNavigationBarView(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
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
                          child: FlatButton(
                            child: Text(
                              "New Tranfer",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.transferMoneyPage);
                            },
                          ),
                        ),
                      ),
                      Container(
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
                        child: FlatButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.print,
                                color: Color(0xFFFFFFFF),
                              ),
                              // SizedBox(width: 8,),
                              Text(
                                "Print",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          10,
                          10,
                          10,
                          10,
                        ),
                        width: 142.78,
                        height: 54.03,
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
                                SizedBox(height: 10),
                                Center(
                                  child: Text(
                                    "Date From:",
                                    style: TextStyle(
                                      color: Color(
                                        0xff3c4858,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "10/06/2018",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(
                                          0xff3c4858,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 55,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Positioned(
                              top: -10,
                              left: 5,
                              height: 23,
                              width: 25,
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
                                    BoxShadow(
                                      color: Color(
                                        0x66e91e63,
                                      ),
                                      offset: Offset(
                                        0,
                                        7,
                                      ),
                                      blurRadius: 10,
                                      spreadRadius: -5,
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
                                    child: Icon(Icons.library_add,
                                        size: 10, color: Color(0xFFFFFFFF))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          10,
                          10,
                          10,
                          10,
                        ),
                        width: 142.78,
                        height: 54.03,
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
                                SizedBox(height: 10),
                                Center(
                                  child: Text(
                                    "Date To:",
                                    style: TextStyle(
                                      color: Color(
                                        0xff3c4858,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "10/16/2018",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(
                                          0xff3c4858,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 55,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Positioned(
                              top: -10,
                              left: 5,
                              height: 23,
                              width: 25,
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
                                    BoxShadow(
                                      color: Color(
                                        0x66e91e63,
                                      ),
                                      offset: Offset(
                                        0,
                                        7,
                                      ),
                                      blurRadius: 10,
                                      spreadRadius: -5,
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
                                    child: Icon(Icons.library_add,
                                        size: 10, color: Color(0xFFFFFFFF))),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                    width: 199.08,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(
                        0xfff5f6f8,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Filter By: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                    color: Color(0xFF6A707E),
                                    fontFamily: 'Poppins'),
                              ),
                              TextSpan(
                                text: ' Status',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF109CF1),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Text('Fiter By: Status |'),

                        IconButton(
                          icon: Icon(Icons.arrow_drop_down),
                          color: Color(0xFFAEAEAE),
                          onPressed: () {},
                        )
                      ],
                    )),

                Container(
                  margin: EdgeInsets.fromLTRB(16, 15, 16, 20),
                  width: 328,
                  height: 350,
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
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                "All Transactions",
                                style: TextStyle(
                                  color: Color(
                                    0xff3c4858,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 328,
                            height: 71,
                            decoration: BoxDecoration(
                              color: Color(
                                0xffcde9ce,
                              ),
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
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "STATUS",
                                        style: TextStyle(
                                          color: Color(
                                            0xff333333,
                                          ),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      Text(
                                        "FCFA",
                                        style: TextStyle(
                                          color: Color(
                                            0xff333333,
                                          ),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.done_outline,
                                        size: 20,
                                        color: Color(
                                          0xff2ed47a,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Jane Doe ',
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xff334d6e,
                                                    ),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '->  Jean Paul',
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xff334d6e,
                                                    ),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "“Money for the kids schools fees ....”",
                                            style: TextStyle(
                                              color: Color(
                                                0xff334d6e,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Lato",
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "—250",
                                        style: TextStyle(
                                          color: Color(
                                            0xfff7685b,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins",
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 328,
                            height: 71,
                            decoration: BoxDecoration(
                              color: Color(
                                0xFFFFFFFF,
                              ),
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
                                // Padding(
                                //   padding: const EdgeInsets.all(2.0),
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Text(
                                //         "STATUS",
                                //         style: TextStyle(
                                //           color: Color(
                                //             0xff333333,
                                //           ),
                                //           fontSize: 8,
                                //           fontWeight: FontWeight.w700,
                                //           fontFamily: "Poppins",
                                //         ),
                                //       ),
                                //       Text(
                                //         "FCFA",
                                //         style: TextStyle(
                                //           color: Color(
                                //             0xff333333,
                                //           ),
                                //           fontSize: 8,
                                //           fontWeight: FontWeight.w700,
                                //           fontFamily: "Poppins",
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.close,
                                        size: 24,
                                        color: Color(
                                          0xfff7685b,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Peter Ndi ',
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xff334d6e,
                                                    ),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '->  Jean Paul',
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xff334d6e,
                                                    ),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "“Rent for Office ....”",
                                            style: TextStyle(
                                              color: Color(
                                                0xff334d6e,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Lato",
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "+1500",
                                        style: TextStyle(
                                          color: Color(
                                            0xff2ed47a,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins",
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: 328,
                            height: 71,
                            decoration: BoxDecoration(
                              color: Color(
                                0xffb8ecf3,
                              ),
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
                                // Padding(
                                //   padding: const EdgeInsets.all(2.0),
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Text(
                                //         "STATUS",
                                //         style: TextStyle(
                                //           color: Color(
                                //             0xff333333,
                                //           ),
                                //           fontSize: 8,
                                //           fontWeight: FontWeight.w700,
                                //           fontFamily: "Poppins",
                                //         ),
                                //       ),
                                //       Text(
                                //         "FCFA",
                                //         style: TextStyle(
                                //           color: Color(
                                //             0xff333333,
                                //           ),
                                //           fontSize: 8,
                                //           fontWeight: FontWeight.w700,
                                //           fontFamily: "Poppins",
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.done_outline,
                                        size: 20,
                                        color: Color(
                                          0xff109cf1,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Grace Che ',
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xff334d6e,
                                                    ),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '->  Jean Paul',
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xff334d6e,
                                                    ),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "“Taxi Fare ....”",
                                            style: TextStyle(
                                              color: Color(
                                                0xff334d6e,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Lato",
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "+950",
                                        style: TextStyle(
                                          color: Color(
                                            0xfff7685b,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins",
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 328,
                            height: 71,
                            decoration: BoxDecoration(
                              color: Color(
                                0xFFFFFFFF,
                              ),
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
                                // Padding(
                                //   padding: const EdgeInsets.all(2.0),
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Text(
                                //         "STATUS",
                                //         style: TextStyle(
                                //           color: Color(
                                //             0xff333333,
                                //           ),
                                //           fontSize: 8,
                                //           fontWeight: FontWeight.w700,
                                //           fontFamily: "Poppins",
                                //         ),
                                //       ),
                                //       Text(
                                //         "FCFA",
                                //         style: TextStyle(
                                //           color: Color(
                                //             0xff333333,
                                //           ),
                                //           fontSize: 8,
                                //           fontWeight: FontWeight.w700,
                                //           fontFamily: "Poppins",
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.close,
                                        size: 24,
                                        color: Color(
                                          0xfff7685b,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Jane Doe ',
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xff334d6e,
                                                    ),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '->  HIGHWEH',
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xff334d6e,
                                                    ),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "“Platform charges...”",
                                            style: TextStyle(
                                              color: Color(
                                                0xff334d6e,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Lato",
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "—50",
                                        style: TextStyle(
                                          color: Color(
                                            0xfff7685b,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins",
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: -15,
                        left: 10,
                        height: 30,
                        width: 30,
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
                              BoxShadow(
                                color: Color(
                                  0x66e91e63,
                                ),
                                offset: Offset(
                                  0,
                                  7,
                                ),
                                blurRadius: 10,
                                spreadRadius: -5,
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
                              child: Icon(Icons.assignment,
                                  size: 10, color: Color(0xFFFFFFFF))),
                        ),
                      ),
                    ],
                  ),
                ),

                //Continue Here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
