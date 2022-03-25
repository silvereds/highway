import 'package:flutter/material.dart';
import 'package:mobile/src/core/common/enums.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/shared/highweh_checkbox.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import '../../ui/themes/const_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingPreference extends StatefulWidget {
  const SettingPreference({Key key}) : super(key: key);
  @override
  _SettingPreferenceState createState() => _SettingPreferenceState();
}

class _SettingPreferenceState extends State<SettingPreference> {
  var _appearOnMap = CheckBoxValues.Yes;

  var _language = CheckBoxValues.English;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F6F8),
        //drawer: NavDrawer(),
        //appBar: AppBarView(),
        body: Container(
          margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
          width: MediaQuery.of(context).size.width,
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    AppLocalizations.of(context).usersPresferenceText,
                    style: TextStyle(
                      color: Color(
                        0xff14a09f,
                      ),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  AppLocalizations.of(context).appearOnMap,
                  style: TextStyle(
                    color: ThemeColors.UnSelectedItemColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HighwehRadio(
                        text: AppLocalizations.of(context).yes,
                        value: CheckBoxValues.Yes,
                        groupValue: _appearOnMap,
                        onChanged: (value) {
                          setState(() {
                            _appearOnMap = value;
                            print('yes');
                          });
                        }),
                    HighwehRadio(
                        text: AppLocalizations.of(context).no,
                        value: CheckBoxValues.No,
                        groupValue: _appearOnMap,
                        onChanged: (value) {
                          setState(() {
                            _appearOnMap = value;
                            print('no');
                          });
                        })
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  AppLocalizations.of(context).language,
                  style: TextStyle(
                    color: Color(
                      0xff334d6e,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HighwehRadio(
                        text: AppLocalizations.of(context).english,
                        value: CheckBoxValues.English,
                        groupValue: _language,
                        onChanged: (value) {
                          setState(() {
                            _language = value;
                            print('English');
                          });
                        }),
                    HighwehRadio(
                        text: AppLocalizations.of(context).french,
                        value: CheckBoxValues.French,
                        groupValue: _language,
                        onChanged: (value) {
                          setState(() {
                            _language = value;
                            print('French');
                          });
                        })
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "    Preference 1:",
                  style: TextStyle(
                    color: Color(
                      0xff334d6e,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "    Preference 2:",
                  style: TextStyle(
                    color: Color(
                      0xff334d6e,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      HighwehButton(
                        text: AppLocalizations.of(context).save,
                        onPress: () {},
                        color: Colors.white,
                        height: 45,
                        width: 110,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
