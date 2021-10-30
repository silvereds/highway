import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/shared/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

class RechargeAccountPage extends StatefulWidget {
  @override
  _RechargeAccountPageState createState() => _RechargeAccountPageState();
}

class _RechargeAccountPageState extends State<RechargeAccountPage> {
  String dropdownValue = 'CMR18897656001';
  String dropdownPayment = "MTN MOMO";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBarView(),
      body: Center(
        child: Container(
          height: 600,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(10, 40, 10, 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonPrint(
                        text: AppLocalizations.of(context).bntBackText,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: ThemeColors.RegisterC,
                        icon: Icons.arrow_back_ios,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 290,
                  height: 60,
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context).rechargeAccount,
                      style: TextStyle(
                        color: Color(
                          0xff14a09f,
                        ),
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        SizedBox(
                          child: Text(
                            AppLocalizations.of(context).accountNumber,
                            style: TextStyle(
                              color: Color(
                                0xff14a09f,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          width: 172.21,
                          height: 19.61,
                        ),
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: Icon(Icons.arrow_downward),
                          iconSize: 15,
                          elevation: 10,
                          style: TextStyle(
                            color: Color(
                              0xff323c47,
                            ),
                          ),
                          underline: Container(),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>[
                            'CMR18897656001',
                            'CMR18897656002',
                            'CMR18897656003',
                            'CMR18897656004'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        Divider(),
                      ]),
                    )),
                Opacity(
                  opacity: 0.5,
                  child: Center(
                    child: Container(
                      height: 44,
                      width: 323,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(
                            0xffeeeeee,
                          ),
                          width: 1,
                        ),
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: AppLocalizations.of(context).accountName,
                          style: TextStyle(
                            color: Color(
                              0xff818e9b,
                            ),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Jane Doe',
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
                  ),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        SizedBox(
                          child: Text(
                            AppLocalizations.of(context).rechargeMethode,
                            style: TextStyle(
                              color: Color(
                                0xff14a09f,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          width: 172.21,
                          height: 19.61,
                        ),
                        DropdownButton<String>(
                          value: dropdownPayment,
                          icon: Icon(Icons.arrow_downward),
                          iconSize: 15,
                          elevation: 10,
                          style: TextStyle(
                            color: Color(
                              0xff323c47,
                            ),
                          ),
                          underline: Container(),
                          onChanged: (String paymentValue) {
                            setState(() {
                              dropdownPayment = paymentValue;
                            });
                          },
                          items: <String>[
                            'MTN MOMO',
                            'ORANGE MONEY',
                            'EXPRESS UNION',
                            'OTHERS'
                          ].map<DropdownMenuItem<String>>((String value2) {
                            return DropdownMenuItem<String>(
                                value: value2,
                                child: Text(
                                  value2,
                                ));
                          }).toList(),
                        ),
                        Divider(),
                      ]),
                    )),
                Text(
                  AppLocalizations.of(context).amountTxt,
                  style: TextStyle(
                    color: Color(
                      0xff14a09f,
                    ),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
                TextFormField(
                  style: TextStyle(
                    color: Color(
                      0xff323c47,
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "0.0",
                    border: InputBorder.none,
                  ),
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    HighwehButton(
                        onPress: () {
                          Navigator.pop(context);
                        },
                        text: AppLocalizations.of(context).cancel,
                        height: 45,
                        color: ThemeColors.deficiteColor,
                        width: 128),
                    SizedBox(
                      width: 20,
                    ),
                    HighwehButton(
                        onPress: () {},
                        text: AppLocalizations.of(context).recharge,
                        height: 45,
                        color: ThemeColors.RegisterCl,
                        width: 128)
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
