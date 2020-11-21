import 'package:flutter/material.dart';
import 'package:mobile/Login_views/Create_password.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:flutter/gestures.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class FirstLoginsms extends StatefulWidget {
  @override
  _LoginsmsState createState() => _LoginsmsState();
}

class _LoginsmsState extends State<FirstLoginsms> {
  bool valuefirst = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'CMR';
  PhoneNumber number = PhoneNumber(isoCode: 'CMR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/HIGHWEH_HORIZONTAL.png',
          fit: BoxFit.contain,
          height: 45,
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [ThemeColors.Background, ThemeColors.LightBackground])),
        padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 120),
                      Text(
                        'Login with:',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,fontFamily: 'Poppins'
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: 0,
                                  onChanged: null,
                                ),
                                Text(
                                  "Email",
                                  style: TextStyle(
                                    fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.w100
                                  ),
                                ),
                                Radio(
                                  value: 0,
                                  groupValue: 0,
                                  onChanged: null,
                                ),
                                Text(
                                  "SMS",
                                  style: TextStyle(
                                    fontSize: 13, fontFamily: 'Poppins',  fontWeight: FontWeight.w100
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  InternationalPhoneNumberInput(
                                    onInputChanged: (PhoneNumber number) {
                                      print(number.phoneNumber);
                                    },
                                    onInputValidated: (bool value) {
                                      print(value);
                                    },
                                     textStyle: TextStyle(color: Color(0xFF90A0B7), fontFamily: 'Poppins', fontSize: 13),

                                    ignoreBlank: false,
                                    autoValidateMode: AutovalidateMode.disabled,
                                    selectorTextStyle:
                                        TextStyle(color: Colors.black),
                                    initialValue: number,
                                    textFieldController: controller,
                                  
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 20),

                      Row(
                        children: [
                          Checkbox(
                              checkColor: ThemeColors.CheckColor,
                              value: this.valuefirst,
                              onChanged: (bool value) {
                                setState(() {
                                  this.valuefirst = value;
                                });
                              }),
                          RichText(
                            text: TextSpan(
                                text: 'I agree to the',
                                style: TextStyle(
                                    color: ThemeColors.CheckText,
                                    fontSize: 14,
                                    fontFamily: 'Roboto'),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '  terms and conditions.',
                                    style: TextStyle(
                                        color: ThemeColors.CheckColor,
                                        fontSize: 14,
                                        fontFamily: 'Roboto'),
                                    recognizer: TapGestureRecognizer()
                                    ..onTap = (){
                                      print('Terms and conditions"');
                                    }
                                  )
                                ]),
                          )
                        ],
                      ),

                      SizedBox(height: 50),

                      Container(
                        alignment: Alignment.bottomRight,
                        child:  FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: ThemeColors.Buttons),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 13, fontFamily: 'Poppins'),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreatePassword()),
                          );
                        },
                        color: Color(0xFF4EB181),
                        textColor: Color(0xFFFFFFFF),
                        height: 33,
                        
                      ),
                      ),

                      //CONTINUE BUILDING HERE
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -40,
                left: 15,
                right: 15,
                height: 120,
                child: Align(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                          ThemeColors.RegisterC,
                          ThemeColors.RegisterCl
                        ])),
                    width: 300,
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 18, fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
