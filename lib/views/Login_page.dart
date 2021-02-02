import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:mobile/controllers/login_controller.dart';
import 'package:mobile/entities/auth-credentials.dart';
import 'package:mobile/views/Login_sms.dart';
import 'package:mobile/shared/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

enum LoginOption { email, sms }

class _LoginPageState extends State<LoginPage> {
  // _site is the variable that recieves registerOption and keeps
  LoginOption _site = LoginOption.email;
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  LoginController loginController = new LoginController();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  AuthCredentials authCredentials = AuthCredentials();

  final formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String hintText() {
    if (_site == LoginOption.email) {
      return "Email";
    } else {
      return "Phone number";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/HIGHWEH_HORIZONTAL.png',
          fit: BoxFit.contain,
          height: 45,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 800,
          height: 850,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                ThemeColors.Background,
                ThemeColors.LightBackground
              ])),
          padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
          child: Center(
            child: Stack(
              alignment: AlignmentDirectional.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.white,
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
                                  value: LoginOption.email,
                                  groupValue: _site,
                                  onChanged: (LoginOption value) {
                                    setState(() {
                                      _site = value;
                                    });
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
                                  value: LoginOption.sms,
                                  groupValue: _site,
                                  onChanged: (value) {
                                    setState(() {
                                      _site = value;
                                    });
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
                                child: Form(
                                  key: formKey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        controller: emailController,
                                        // validator: (val) => !EmailValidator.validate(val, true) ? 'Enter valid Email': null,
                                        onSaved: (val) => _email = val,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          hintText: hintText(),
                                          hintStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFAAAAAA),
                                              fontFamily: 'Roboto'),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                      Divider(color: Colors.grey),
                                      SizedBox(height: 10),
                                      TextFormField(
                                        controller: passwordController,
                                        validator: (val) => val.length < 4
                                            ? 'Password too short..'
                                            : null,
                                        onSaved: (val) => _password = val,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFAAAAAA),
                                              fontFamily: 'Roboto'),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                      Divider(color: Colors.grey),
                                    ],
                                  ),
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
                                   String authType = "";
                                  if (hintText() == "Email") {
                                     authType = "email";
                                    authCredentials.email =
                                        emailController.text.trim();
                                    // _scaffoldkey.currentState
                                    //     .showSnackBar(SnackBar(
                                    //   content: Text(
                                    //       '$emailController.text + $passwordController.text'),
                                    //   backgroundColor: Colors.red[600],
                                    //   duration: Duration(seconds: 3),
                                    // ));
                                  } else {
                                    authType = "phoneNumber";
                                    authCredentials.phoneNumber =
                                      emailController.text.trim();
                                    // _scaffoldkey.currentState
                                    //     .showSnackBar(SnackBar(
                                    //   content: Text(
                                    //       '$emailController.text + $passwordController.text'),
                                    //   backgroundColor: Colors.red[600],
                                    //   duration: Duration(seconds: 3),
                                    // ));
                                  }
                                     if( passwordController.text == authCredentials.password){
                                        loginController.loginRequest(
                                          authCredentials, authType).then((result) => { 
                                            if(result == "true"){
                                                {
                                                    Navigator.pushNamed(
                                                        context,
                                                              AppRoutes.dashboard)
                                                  } 

                                            } else {
                                               _scaffoldkey.currentState
                                                        .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Registration Failed"),
                                                      backgroundColor:
                                                          Colors.red[600],
                                                      duration:
                                                          Duration(seconds: 3),
                                                    ))

                                            }

                                          });
                                     }
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
      ),
    );
  }
}
