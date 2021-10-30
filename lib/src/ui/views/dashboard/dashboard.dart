import "package:flutter/material.dart";
import 'package:mobile/src/ui/shared/routes.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

import 'package:pie_chart/pie_chart.dart';

import 'widget/main_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            MainCard(
              name: 'Jane Doe ',
              amount: 'FCFA 34,700',
              type: AppLocalizations.of(context).buisness,
              amountTextColor: ThemeColors.TransferCurrency,
              color1: Color(0xFF00CDAC),
              color2: Color(0xFF4EB181),
              text: "\$",
              newTransferText: AppLocalizations.of(context).newTransfer,
              press: () {
                Navigator.pushNamed(context, AppRoutes.transferMoneyPage);
              },
            ),
            MainCard(
              newTransferText: AppLocalizations.of(context).payNow,
              name: 'Jane Doe ',
              amount: 'FCFA -800',
              type: AppLocalizations.of(context).personal,
              amountTextColor: ThemeColors.deficiteColor,
              color1: ThemeColors.deficiteColor,
              color2: ThemeColors.deficiteColor,
              text: "\$",
              press: () {
                Navigator.pushNamed(context, '/tansferMoneyPage');
              },
            ),
            MainCard(
              newTransferText: AppLocalizations.of(context).newTransfer,
              name: 'Jane Doe , ',
              amount: "FCFA 2,700",
              type: AppLocalizations.of(context).others,
              amountTextColor: ThemeColors.TransferCurrency,
              color1: Color(0xFF00CDAC),
              color2: Color(0xFF4EB181),
              text: "\$",
              press: () {
                Navigator.pushNamed(context, '/tansferMoneyPage');
              },
            ),
            MainCard(
              newTransferText: AppLocalizations.of(context).newTransfer,
              name: AppLocalizations.of(context).devices,
              amount: '4',
              type: '',
              color1: Color(
                0xFF00ACC1,
              ),
              color2: Color(0xFF26C6DA),
              text: 'D',
              amountTextColor: Color(0xFF26C6DA),
              press: () {
                Navigator.pushNamed(context, '/tansferMoneyPage');
              },
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
                            AppLocalizations.of(context).transactions,
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
                                    AppLocalizations.of(context).moneyFor,
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
                                    AppLocalizations.of(context).moneyFor,
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
                                    AppLocalizations.of(context).moneyFor,
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
              margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
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
                                    text: AppLocalizations.of(context)
                                        .transAndAccount,
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
                              ),
                              //   centerText:

                              chartValuesOptions: ChartValuesOptions(
                                showChartValues: false,
                                chartValueStyle: TextStyle(
                                  fontSize: 36,
                                  color: Color(0xFF2ED47A),
                                ),
                                showChartValueBackground:
                                    _showChartValueBackground,
                              ),
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            Text(
                              AppLocalizations.of(context).legend,
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                LegendLable(
                                  text: AppLocalizations.of(context).buisness,
                                  color: Color(
                                    0xFFFfB946,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                LegendLable(
                                  text: AppLocalizations.of(context).personal,
                                  color: Color(
                                    0xFF2ED47A,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                LegendLable(
                                  text: AppLocalizations.of(context).others,
                                  color: Color(
                                    0xFFF7685B,
                                  ),
                                ),
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

class LegendLable extends StatelessWidget {
  const LegendLable({Key key, @required this.text, @required this.color})
      : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            border: Border.all(
              color: color,
              width: 5,
            ),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 3,
        ),
        Text(text,
            style: TextStyle(
              color: Color(0xFF192A3E),
              fontSize: 10,
            ))
      ],
    );
  }
}
