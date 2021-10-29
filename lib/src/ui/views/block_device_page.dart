import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BlockDevicePage extends StatefulWidget {
  @override
  _BlockDevicePageState createState() => _BlockDevicePageState();
}

class _BlockDevicePageState extends State<BlockDevicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F6F8),
        drawer: NavDrawer(),
        appBar: AppBarView(),
        //  bottomNavigationBar: BottomNavigationBarView(),
        body: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 55, 20, 20),
            height: 427,
            //  width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Color(
                    0x23000000,
                  ),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    AppLocalizations.of(context).blockDevice,
                    style: TextStyle(
                      color: Color(0xFF14A09F),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: Text(
                      AppLocalizations.of(context).blockDeviceTxt,
                      style: TextStyle(
                        color: Color(
                          0xFF999999,
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: 150,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context).enterPasswordConfirmTxt,
                          style: TextStyle(
                            color: Color(
                              0xff14a09f,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                        TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                        Divider(
                          color: Color(
                            0xFFD2D2D2,
                          ),
                          thickness: 2,
                          indent: 5,
                          endIndent: 5,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HighwehButton(
                                onPress: () {},
                                text: AppLocalizations.of(context).cancel,
                                height: 40,
                                color: ThemeColors.deficiteColor,
                                width: 100),
                            SizedBox(
                              width: 20,
                            ),
                            HighwehButton(
                                onPress: () {},
                                text: AppLocalizations.of(context).blockBtnTxt,
                                height: 40,
                                color: ThemeColors.RegisterCl,
                                width: 100)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
