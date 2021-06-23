import 'package:flutter/material.dart';
import 'package:mobile/shared/appBar.dart';
import 'package:mobile/shared/bottomNavigationBar.dart';

import 'package:mobile/shared/navDrawer.dart';

class SettingPreference extends StatefulWidget {
  const SettingPreference({Key key}) : super(key: key);

  @override
  _SettingPreferenceState createState() => _SettingPreferenceState();
}

class _SettingPreferenceState extends State<SettingPreference> {
  var _radioValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F6F8),
        drawer: NavDrawer(),
        appBar: AppBarView(),
        body: Container(
          margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(
                  0x3f000000,
                ),
                offset: Offset(
                  0,
                  4,
                ),
                blurRadius: 4,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "User Preferences",
                    style: TextStyle(
                      color: Color(
                        0xff14a09f,
                      ),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "    Appear on map:",
                  style: TextStyle(
                    color: Color(
                      0xff334d6e,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      activeColor: Color(0xFF4EB181),
                      value: 1,
                      groupValue: _radioValue,
      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      },
                    ),
                    Text(
                      "Yes",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          color: Color(0xFF334D6E)),
                    ),
                    Radio(
                      activeColor: Color(0xFF4EB181),
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      },
                    ),
                    Text(
                      "No",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          color: Color(0xFF334D6E)),
                    ),
                  ],
                ),
          
          
                  SizedBox(
                  height: 30,
                ),
                Text(
                  "    Languages:",
                  style: TextStyle(
                    color: Color(
                      0xff334d6e,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      activeColor: Color(0xFF4EB181),
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      },
                    ),
                    Text(
                      "Yes",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          color: Color(0xFF334D6E)),
                    ),
                    Radio(
                      activeColor: Color(0xFF4EB181),
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      },
                    ),
                    Text(
                      "No",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          color: Color(0xFF334D6E)),
                    ),
                  ],
                ),
          
          
          
                  SizedBox(
                  height: 30,
                ),
                Text(
                  "    Preference 1:",
                  style: TextStyle(
                    color: Color(
                      0xff334d6e,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      activeColor: Color(0xFF4EB181),
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      },
                    ),
                    Text(
                      "Yes",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          color: Color(0xFF334D6E)),
                    ),
                    Radio(
                      activeColor: Color(0xFF4EB181),
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      },
                    ),
                    Text(
                      "No",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          color: Color(0xFF334D6E)),
                    ),
                  ],
                ),
          
          
                  SizedBox(
                  height: 30,
                ),
                Text(
                  "    Preference 2:",
                  style: TextStyle(
                    color: Color(
                      0xff334d6e,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      activeColor: Color(0xFF4EB181),
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      },
                    ),
                    Text(
                      "Yes",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          color: Color(0xFF334D6E)),
                    ),
                    Radio(
                      activeColor: Color(0xFF4EB181),
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      },
                    ),
                    Text(
                      "No",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          color: Color(0xFF334D6E)),
                    ),
                  ],
                ),
          
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                          minWidth: 110,
                          height: 45,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          onPressed: () {
                          print('save');
                          },
                          color: Color(0xFF4EB181),
                          textColor: Colors.white,
                          child: Text(
                            "save",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}