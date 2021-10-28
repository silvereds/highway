import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';

import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChangePinPage extends StatefulWidget {
  @override
  _ChangePinPageState createState() => _ChangePinPageState();
}

class _ChangePinPageState extends State<ChangePinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      drawer: NavDrawer(),
      appBar: AppBarView(),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 35, 10, 15),
          height: 427,
          width: 338,
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
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context).changePinCode,
                      style: TextStyle(
                        color: Color(
                          0xff14a09f,
                        ),
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: Text(
                        AppLocalizations.of(context).newPinCode,
                        style: TextStyle(
                          color: Color(
                            0xff14a09f,
                          ),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                      width: 125,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: PinCodeTextField(
                      appContext: context,
                      length: 5,
                      onChanged: (valu) {
                        print(valu);
                      },
                      pastedTextStyle: TextStyle(
                        color: Color(
                          0xff219653,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: false,
                      obscuringCharacter: '*',
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5.0),
                          fieldHeight: 86,
                          fieldWidth: 32,
                          activeFillColor: Colors.green),
                      cursorColor: Colors.black,
                      animationDuration: Duration(milliseconds: 300),
                      keyboardType: TextInputType.number,
                      onCompleted: (v) {
                        print("Completed");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context).hintPasword,
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xff14a09f),
                                fontFamily: 'Roboto'),
                            border: InputBorder.none,
                          ),
                        ),
                        Divider()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HighwehButton(
                          onPress: () {},
                          text: AppLocalizations.of(context).cancel,
                          height: 47,
                          color: ThemeColors.deficiteColor,
                          width: 100),
                      SizedBox(
                        width: 20,
                      ),
                      HighwehButton(
                          onPress: () {},
                          text: AppLocalizations.of(context).save,
                          height: 47,
                          color: Color(0xFF4EB181),
                          width: 100)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
