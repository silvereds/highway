import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/default_elevated_button.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/shared/routes.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../routes.dart';

class TransactionDetailsPage extends StatefulWidget {
  final PageController pageController;

  const TransactionDetailsPage({Key key, this.pageController})
      : super(key: key);
  @override
  _TransactionDetailsPageState createState() => _TransactionDetailsPageState();
}

class _TransactionDetailsPageState extends State<TransactionDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      ButtonPrint(
                          text: AppLocalizations.of(context).bntBackText,
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, AppRoutes.homeScreen);
                          },
                          icon: Icons.arrow_back_ios,
                          color: ThemeColors.RegisterCl),
                      ButtonPrint(
                          text: AppLocalizations.of(context).print,
                          onPressed: () {},
                          icon: Icons.print,
                          color: ThemeColors.RegisterCl)
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
                              AppLocalizations.of(context).referenceNumber,
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
                                    AppLocalizations.of(context).type,
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
                                    AppLocalizations.of(context)
                                        .debitTxt
                                        .toUpperCase(),
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
                                      text:
                                          '${AppLocalizations.of(context).amountTxt}    1200',
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
                                      text:
                                          '${AppLocalizations.of(context).charges}              25',
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
                                      text: '     12,025',
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
                              AppLocalizations.of(context).dateTxt,
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
                              AppLocalizations.of(context).status,
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
                              AppLocalizations.of(context)
                                  .completed
                                  .toUpperCase(),
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
                            AppLocalizations.of(context).senderAcct,
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
                            AppLocalizations.of(context).accountName,
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
                            AppLocalizations.of(context).senderDevice,
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
                            AppLocalizations.of(context).rfidCard,
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
                            AppLocalizations.of(context).recieverAcct,
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
                            AppLocalizations.of(context).reciverName,
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
                            AppLocalizations.of(context).receiveDevice,
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
                            AppLocalizations.of(context).cardReader,
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
                        AppLocalizations.of(context).comment,
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
                          AppLocalizations.of(context).commentTxt4,
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
                    HighwehButton(
                        onPress: () {},
                        text: AppLocalizations.of(context).archieveTxt,
                        height: 40.14,
                        color: ThemeColors.archiveColor,
                        width: 114.85),
                    HighwehButton(
                        onPress: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(
                              context, RouteGenerator.homeScreen);
                        },
                        text: AppLocalizations.of(context).closeTxt,
                        height: 40.14,
                        color: ThemeColors.RegisterCl,
                        width: 114.85)
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
