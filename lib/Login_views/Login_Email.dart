import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:flutter/gestures.dart';
import 'package:mobile/Login_views/Login_sms.dart';

class LoginEmail extends StatefulWidget {
  @override
  _LoginEmailState createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
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
                            color: Color(0xFF4EB181),
                            fontSize: 18,
                            fontFamily: 'Poppins'),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    TextField(
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
                                    Divider(color: Colors.grey),
                                    SizedBox(height: 10),
                                    TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFAAAAAA),
                                              fontFamily: 'Roboto'),
                                          border: InputBorder.none,
                                          prefix: Icon(Icons.lock_outline)),
                                    ),
                                    Divider(color: Colors.grey),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          children: [
                            Container(
                              height: 35.02,
                              width: 120,
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
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: BorderSide(color: ThemeColors.Buttons),
                                ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 13, fontFamily: 'Poppins'),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginSms()),
                                  );
                                },
                                color: Color(0xFF4EB181),
                                textColor: Color(0xFFFFFFFF),
                                height: 33,
                              ),
                            ),
                            SizedBox(height: 15),
                            RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: '  Forgot Password?',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Color(0xFF109CF1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins'),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print('Forgot password');
                                      })
                              ]),
                            )
                          ],
                        ),
                      ),
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
                        "Login",
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
