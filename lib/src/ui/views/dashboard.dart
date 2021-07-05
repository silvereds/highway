import "package:flutter/material.dart";
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:pie_chart/pie_chart.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  Map<String, double> dataMap = {
    "Others": 1,
    "Business": 6,
    "Personal": 3,
  };

  bool _showCenterText = true;
  bool _showChartValueBackground = false;

  // File _image

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              margin: EdgeInsets.fromLTRB(30, 30, 30, 8),
              height: 170,
              width: 323,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 323,
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
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Jane Doe',
                                    style: TextStyle(
                                        color: ThemeColors.LightText,
                                        fontSize: 14)),
                                TextSpan(
                                  text: ' - Buisness',
                                  style: TextStyle(
                                    color: ThemeColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'FCFA 34,700',
                            style: TextStyle(
                              color: ThemeColors.TransferCurrency,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Expanded(child: Divider()),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                Navigator.pushNamed(context, '/tansferMoneyPage');
                                },
                                child: Text(
                                  'New Transfer',
                                  style: TextStyle(
                                    color: Color(
                                      0xff219653,
                                    ),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/rechargeAccountPage');
                                },
                                child: Text(
                                  "Recharge",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: 15,
                    width: 78,
                    height: 78,
                    child: Container(
                      margin: EdgeInsets.all(4),
                      height: 78,
                      width: 78,
                      decoration: BoxDecoration(
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
                              0x66ff9800,
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
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "\$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              margin: EdgeInsets.fromLTRB(30, 30, 30, 8),
              height: 170,
              width: 323,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 323,
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
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Jane Doe',
                                    style: TextStyle(
                                        color: ThemeColors.LightText,
                                        fontSize: 14)),
                                TextSpan(
                                  text: ' - Buisness',
                                  style: TextStyle(
                                    color: ThemeColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "FCFA -900",
                            style: TextStyle(
                              color: Color(
                                0xfff44336,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Expanded(child: Divider()),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                 Navigator.pushNamed(context, '/tansferMoneyPage');
                                },
                                child: Text(
                                  "Pay Now",
                                  style: TextStyle(
                                    color: Color(
                                      0xff219653,
                                    ),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                   Navigator.pushNamed(context, '/rechargeAccountPage'); 
                                },
                                child: Text(
                                  "Recharge",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: 15,
                    width: 78,
                    height: 78,
                    child: Container(
                      margin: EdgeInsets.all(4),
                      height: 78,
                      width: 78,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          2,
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
                              0xffe53935,
                            ),
                            Color(
                              0xffe53935,
                            ),
                          ],
                          stops: [
                            0,
                            0.98,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "\$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              margin: EdgeInsets.fromLTRB(30, 30, 30, 8),
              height: 170,
              width: 323,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 323,
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
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Jane Doe',
                                    style: TextStyle(
                                        color: ThemeColors.LightText,
                                        fontSize: 14)),
                                TextSpan(
                                  text: ' - Others',
                                  style: TextStyle(
                                    color: ThemeColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'FCFA 2,700',
                            style: TextStyle(
                              color: ThemeColors.TransferCurrency,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Expanded(child: Divider()),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/tansferMoneyPage');
                                },
                                child: Text(
                                  'New Transfer',
                                  style: TextStyle(
                                    color: Color(
                                      0xff219653,
                                    ),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/rechargeAccountPage');
                                },
                                child: Text(
                                  "Recharge",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: 15,
                    width: 78,
                    height: 78,
                    child: Container(
                      margin: EdgeInsets.all(4),
                      height: 78,
                      width: 78,
                      decoration: BoxDecoration(
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
                              0x66ff9800,
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
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "\$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              margin: EdgeInsets.fromLTRB(30, 30, 30, 8),
              height: 170,
              width: 323,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 323,
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
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Devices",
                            style: TextStyle(
                              color: Color(
                                0xff6a707e,
                              ),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '4',
                            style: TextStyle(
                              color: Color(
                                0xff1abed2,
                              ),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Expanded(child: Divider()),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/alldevicesPage');
                                },
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    color: Color(
                                      0xff1abed2,
                                    ),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: 15,
                    width: 78,
                    height: 78,
                    child: Container(
                      margin: EdgeInsets.all(4),
                      height: 78,
                      width: 78,
                      decoration: BoxDecoration(
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
                              0x66ff9800,
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
                              0xff00acc1,
                            ),
                            Color(
                              0xff26c6da,
                            ),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Center(
                          child: Icon(
                            Icons.credit_card_rounded,
                            size: 30,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF999999),
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(26, 30, 26, 8),
              height: 150,
              width: 323,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Transactions",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                            ),
                            textAlign: TextAlign.end,
                          ),
                          SizedBox(height: 12),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.done_outline_outlined,
                                color: Color(0xFF2ED47A),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Jane Doe -> Jean Paul',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '"Money For the School Fees..."',
                                    style: TextStyle(
                                      color: Color(0xFF323C47),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text("-7,300",
                                  style: TextStyle(
                                      color: Color(0xFFF7685B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -30,
                    left: 15,
                    width: 59,
                    height: 59,
                    child: Container(
                      margin: EdgeInsets.all(4),
                      height: 78,
                      width: 78,
                      decoration: BoxDecoration(
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
                              0x66ff9800,
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
                              0xFF00CDAC,
                            ),
                            Color(
                              0xFF4EB181,
                            ),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Center(
                          child: Icon(
                            Icons.dashboard_outlined,
                            size: 30,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 97,
              width: 327,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.clear_rounded,
                                color: Color(0xFFF7685B),
                                size: 30,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Jane Doe -> Jean Paul',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '"Money For the School Fees..."',
                                    style: TextStyle(
                                      color: Color(0xFF323C47),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "+300",
                                style: TextStyle(
                                  color: Color(0xFF2ED47A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 97,
              width: 327,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.error_outline,
                                color: Color(0xFF109CF1),
                                size: 30,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Jane Doe -> Jean Paul',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '"Money For the School Fees..."',
                                    style: TextStyle(
                                      color: Color(0xFF323C47),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "-1,350",
                                style: TextStyle(
                                  color: Color(0xFFF7685B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              // height: 329,
              // width: 323,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF999999),
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    height: 280,
                    width: 320,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          //  crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' % Transactions / Accounts :',
                                    style: TextStyle(
                                      color: Color(0xFF192A3E),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            PieChart(
                              dataMap: dataMap,
                              animationDuration: Duration(milliseconds: 800),
                              chartType: ChartType.ring,
                              centerText: _showCenterText ? "60 %" : null,
                              // chartRadius: 200,
                              chartLegendSpacing: 1,
                              chartRadius:
                                  MediaQuery.of(context).size.width / 2.9,
                              colorList: colorList,
                              initialAngleInDegree: 90,
                              ringStrokeWidth: 10,
                              legendOptions: LegendOptions(
                                legendPosition: LegendPosition.right,
                                showLegends: false,
                                legendTextStyle: TextStyle(),
                              ),
                              //   centerText:

                              chartValuesOptions: ChartValuesOptions(
                                  showChartValues: false,
                                  chartValueStyle: TextStyle(
                                      fontSize: 56, color: Color(0xFF2ED47A)),
                                  showChartValueBackground:
                                      _showChartValueBackground),
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            Text('LEGEND',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.left),
                            Row(
                              children: [
//                                       Container(
//   width: MediaQuery.of(context).size.width,
//   decoration: BoxDecoration(
//     border: Border.all(
//       color: Color(
//         0xffffb946,
//       ),
//       width: 2,
//     ),
//     shape: BoxShape.circle,
//   ),
// ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: 10,
                    width: 45.03,
                    height: 45.64,
                    child: Container(
                      margin: EdgeInsets.all(4),
                      height: 329,
                      width: 269,
                      decoration: BoxDecoration(
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
                              0x66ff9800,
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
                              0xFF00CDAC,
                            ),
                            Color(
                              0xFF4EB181,
                            ),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Center(
                          child: Icon(
                            Icons.pie_chart,
                            size: 18,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
