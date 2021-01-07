import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:mobile/Login_views/First_Login_sms.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:mobile/Login_views/Create_password.dart';

class FirstLoginEmail extends StatefulWidget {
  @override
  _FirstLoginEmailState createState() => _FirstLoginEmailState();
}

class _FirstLoginEmailState extends State<FirstLoginEmail> {
  bool valuefirst = false;

  final _formKey = GlobalKey<FormState>();

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
            // alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 423,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 90),
                        Text(
                          "Login with :",
                          style: TextStyle(
                            color: Color(
                              0xff4eb181,
                            ),
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppins",
                          ),
                          // textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                              activeColor: Color(0xFF4EB181),
                              value: 1,
                              groupValue: 1,
                              onChanged: (val) {
                                print('Radio $val');
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
                              groupValue: 0,
                              onChanged: (val) {
                                     Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FirstLoginsms()),
                              );
                              }
                               ,
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
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            Form(
                              key: _formKey,
                              child: TextFormField(
                                autovalidateMode: AutovalidateMode.disabled,
                              
                                
                                validator: EmailValidator(errorText: "Enter valid Email"),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: 'Email Address',
                                    hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFFAAAAAA),
                                        fontFamily: 'Roboto'),
                                    border: InputBorder.none,
                                    prefix: Icon(Icons.mail)),
                              ),
                            ),
                            Divider(
                              color: Color(
                                0xffd2d2d2,
                              ),
                              endIndent: 20,
                              indent: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                checkColor: Color(0xFF4EB181),
                               
                                 activeColor: Color(0xFFFFFFFF),

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
                                        color: Color(0xFFAAAAAA),
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
                                            ..onTap = () {
                                              print('Terms and conditions"');
                                            })
                                    ]),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
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
                                if (_formKey.currentState.validate() && valuefirst == true) {
                                
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreatePassword()),
                              );
                                                 } else {
                                  print("Not validated");
                                }
                              },
                            ),
                          ),
                        )
                      ],
                    ),
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
