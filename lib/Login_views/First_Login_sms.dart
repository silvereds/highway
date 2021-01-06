import 'package:flutter/material.dart';
import 'package:mobile/Login_views/Create_password.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:flutter/gestures.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mobile/Login_views/First_Login_Email.dart';

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
                      SizedBox(height: 90),
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
                              activeColor: Color(0xFF4EB181),
                              value: 0,
                              groupValue: 1,
                              onChanged: (val) {
                                   Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FirstLoginEmail()),
                                   );
                              },
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF334D6E)),
                            ),
                            Radio(
                              activeColor: Color(0xFF4EB181),
                              value: 1,
                              groupValue: 1,
                              onChanged: (val) {
                                print('Radio $val');
                              },
                            ),
                            Text(
                              "SMS",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF334D6E)),
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
                          Expanded(
                                                      child: RichText(
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
                                        print(' Terms and conditions"');
                                      }
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 50),

                      Container(
                           alignment: Alignment.bottomRight,

                                                child: Container(
                            decoration: BoxDecoration(
                              color: Color(
                                0xff4eb181,
                              ),
                              borderRadius: BorderRadius.circular(
                                4,
                              ),
                                boxShadow: [
        BoxShadow(
          color: Color(
            0x3d109cf1,
          ),
          offset: Offset(
            0,
            4,
          ),
          blurRadius: 10,
        ),
      ],
                            ),
                            height: 35.02,
                            width: 120,
                            child: FlatButton(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreatePassword()),
                              );
                            },
                            ),
                          ),
                        )

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
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        3,
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
                            0x66E91E63,
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
