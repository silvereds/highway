import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/bottomNavigationBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';

class TransactionDetailsPage extends StatefulWidget {
  @override
  _TransactionDetailsPageState createState() => _TransactionDetailsPageState();
}

class _TransactionDetailsPageState extends State<TransactionDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavDrawer(),
      // backgroundColor: Color(0xFFF5F6F8),
      // appBar: AppBarView(),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 35, 10, 15),
          width: 329,
          height: 727,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Color(
                  0x23000000,
                ),
                blurRadius: 16,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 42,
                        decoration: BoxDecoration(
                          color: Color(
                            0xff4eb181,
                          ),
                          borderRadius: BorderRadius.circular(
                            3,
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.keyboard_arrow_left_outlined,
                                color: Color(0xFFFFFFFF),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 42,
                        decoration: BoxDecoration(
                          color: Color(
                            0xff4eb181,
                          ),
                          borderRadius: BorderRadius.circular(
                            3,
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.print,
                                color: Color(0xFFFFFFFF),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Print",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 327,
                  height: 197,
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
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        height: 40,
                        width: 147,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Reference Number",
                              style: TextStyle(
                                color: Color(
                                  0xff818e9b,
                                ),
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins",
                              ),
                            ),
                            Text(
                              "ABC00987",
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
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 15.0),
                              height: 40,
                              width: 147,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Type",
                                    style: TextStyle(
                                      color: Color(
                                        0xff818e9b,
                                      ),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Text(
                                    "DEBIT",
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Amount:     12,000',
                                      style: TextStyle(
                                        color: Color(
                                          0xff818e9b,
                                        ),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
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
                                      text: 'Charges:             25',
                                      style: TextStyle(
                                        color: Color(
                                          0xff818e9b,
                                        ),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '       Total:',
                                      style: TextStyle(
                                        color: Color(
                                          0xff818e9b,
                                        ),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    TextSpan(
                                      text: '      12,025',
                                      style: TextStyle(
                                        color: Color(
                                          0xff192a3e,
                                        ),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        height: 40,
                        width: 147,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(
                                color: Color(
                                  0xff818e9b,
                                ),
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins",
                              ),
                            ),
                            Text(
                              "12/12/2020",
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
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        height: 40,
                        width: 147,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(
                                color: Color(
                                  0xff818e9b,
                                ),
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins",
                              ),
                            ),
                            Text(
                              "COMPLETED",
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
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sender Account",
                            style: TextStyle(
                              color: Color(
                                0xff818e9b,
                              ),
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "CMR1235723609-01",
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sender Name",
                            style: TextStyle(
                              color: Color(
                                0xff818e9b,
                              ),
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "Jane Doe",
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sender device",
                            style: TextStyle(
                              color: Color(
                                0xff818e9b,
                              ),
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "RFID CARD",
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
                    ],
                  ),
                ),
                Divider(
                  endIndent: 10,
                  indent: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Reciver  Account",
                            style: TextStyle(
                              color: Color(
                                0xff818e9b,
                              ),
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "CMR1235723609-03",
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Reciever Name",
                            style: TextStyle(
                              color: Color(
                                0xff818e9b,
                              ),
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "Tchassam Paul",
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Reciever device",
                            style: TextStyle(
                              color: Color(
                                0xff818e9b,
                              ),
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "Card Reader",
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
                    ],
                  ),
                ),
                Divider(
                  endIndent: 10,
                  indent: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Comment",
                        style: TextStyle(
                          color: Color(
                            0xff818e9b,
                          ),
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Poppins",
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "“Payment for school bus subscription service for the kids”",
                          style: TextStyle(
                            color: Color(
                              0xff323c47,
                            ),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    FlatButton(
                        minWidth: 97,
                        height: 37,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        onPressed: () {
                          print('Archived');
                        },
                        color: Color(0xFFFFB946),
                        textColor: Colors.white,
                        child: Text(
                          "Archive",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                          ),
                        )),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    FlatButton(
                        minWidth: 100,
                        height: 40,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        onPressed: () {
                          // Navigator.pushNamed(context,  AppRoutes.confirmTransferPage);
                        },
                        color: Color(0xFF4EB181),
                        textColor: Colors.white,
                        child: Text(
                          "Close",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
