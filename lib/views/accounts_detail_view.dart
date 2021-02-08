import 'package:flutter/material.dart';
import 'package:mobile/shared/navDrawer.dart';
import 'package:mobile/shared/bottomNavigationBar.dart';

import 'package:mobile/shared/routes.dart';
import 'package:mobile/shared/appbar.dart';



class AccountsDetailsView extends StatefulWidget {
  @override
  _AccountsDetailsViewState createState() => _AccountsDetailsViewState();
}

class _AccountsDetailsViewState extends State<AccountsDetailsView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        backgroundColor: Color(0xFFF5F6F8),
        appBar: AppBarView(),

        bottomNavigationBar: BottomNavigationBarView(),
        body: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
            // width: MediaQuery.of(context).size.width,
            height: 620,
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
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
                                onPressed: () {
                                    Navigator.pushNamed(context, AppRoutes.accountsView);
                                },
                              ),
                              Text("Back",
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 14,
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
                                      fontSize: 14,
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Color(
                          0xFFFFFFFF,
                        ),
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
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Account Number: ',
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
                                      text: 'CMR1235723609-01',
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
                              width: 150,
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Account Name: ',
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
                                      text: 'Jane Doe',
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
                              width: 200,
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Alias/Tag:  ',
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
                                      text: 'Personal',
                                      style: TextStyle(
                                        color: Color(
                                          0xff2f80ed,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 200,
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Account Balance ',
                                      style: TextStyle(
                                        color: Color(
                                          0xff818e9b,
                                        ),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'FCFA 32,850',
                                      style: TextStyle(
                                        color: Color(
                                          0xff192a3e,
                                        ),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 200,
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Date Opened: ',
                                      style: TextStyle(
                                        color: Color(
                                          0xff818e9b,
                                        ),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    TextSpan(
                                      text: '    12/12/2020',
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
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 200,
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Status: ',
                                      style: TextStyle(
                                        color: Color(
                                          0xff818e9b,
                                        ),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    TextSpan(
                                      text: '    ACTIVE',
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
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Linked Devices",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      height: 36,
                      width: 306,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'ID',
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
                            'Type',
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
                            'Alias',
                            style: TextStyle(
                              color: Color(
                                0xff323c47,
                              ),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
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
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      height: 56,
                      width: 306,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '00987',
                            style: TextStyle(
                              color: Color(
                                0xff333333,
                              ),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            'RFID CARD',
                            style: TextStyle(
                              color: Color(
                                0xff333333,
                              ),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            'Joe Kamga',
                            style: TextStyle(
                              color: Color(
                                0xff333333,
                              ),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
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
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      height: 56,
                      width: 306,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '00345',
                            style: TextStyle(
                              color: Color(
                                0xff333333,
                              ),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            'CARD READER',
                            style: TextStyle(
                              color: Color(
                                0xff333333,
                              ),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            'Peter Ndi',
                            style: TextStyle(
                              color: Color(
                                0xff333333,
                              ),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
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
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    
                     FlatButton(
                                  minWidth: 93,
                                 height: 35,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                               
                                  ),
                                  onPressed: () {
                                    print(' Account Blocked');
                                  },
                                  color: Color(0xfff44336),
                                  textColor: Colors.white,
                                  child: Text(
                                    "Block Account",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto",
                                    ),
                                  )),


                                  FlatButton(
                                  minWidth: 93,
                                 height: 35,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                               
                                  ),
                                  onPressed: () {
                                     Navigator.pushNamed(context,   AppRoutes.changeAlias);
                                  },
                                  color: Color(0xFF4EB181),
                                  textColor: Colors.white,
                                  child: Text(
                                    "Change Alias",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto",
                                    ),
                                  )),


                                  FlatButton(
                                   minWidth: 93,
                                  height: 35,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                               
                                  ),
                                  onPressed: () {
                                     Navigator.pushNamed(
                                                          context,
                                                          AppRoutes
                                                              .rechargeAccountpage);
                                  },
                                  color: Color(0xFF4EB181),
                                  textColor: Colors.white,
                                  child: Text(
                                    "Recharge Account",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto",
                                    ),
                                  ))
                    
                  ],)
                ],
              ),
            ),
          ),
        ));
  }
}
