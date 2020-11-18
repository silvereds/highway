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
                      SizedBox(height: 120),
                      Text(
                        'Login with:',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18, /*fontFamily:*/
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
                                  value: 0,
                                  groupValue: 0,
                                  onChanged: null,
                                ),
                                Text(
                                  "Email",
                                  style: TextStyle(
                                    fontSize: 13, /*fontFamily:*/
                                  ),
                                ),
                                Radio(
                                  value: 1,
                                  groupValue: 0,
                                  onChanged: null,
                                ),
                                Text(
                                  "SMS",
                                  style: TextStyle(
                                    fontSize: 13, /*fontFamily:*/
                                  ),
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
                                      decoration: InputDecoration(
                                          hintText: 'Email Address',
                                          border: InputBorder.none,
                                          prefix: Icon(Icons.mail)),
                                    ),
                                    Divider(color: Colors.grey),
                                    SizedBox(height: 10),
                                    TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Password',
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

                      SizedBox(height: 50),

                      Container(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          children: [
                            FlatButton(
                                minWidth: 133,
                                height: 40.02,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: BorderSide(color: ThemeColors.Buttons),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>LoginSms ()),
                                  );
                                },
                                color: ThemeColors.Buttons,
                                textColor: Colors.white,
                                child: Text("Login")),
                            SizedBox(height: 15),
                            RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: '  Forgot Password?',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: ThemeColors.ForgotPassword,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto'),
                                  recognizer: TapGestureRecognizer()
                                     ..onTap = (){
                                      print('Forgot password');
                                    }
                                )
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
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
