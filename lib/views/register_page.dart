import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile/controllers/register_controller.dart';
import 'package:mobile/entities/auth-credentials.dart';
import 'package:mobile/shared/routes.dart';
import 'package:mobile/themes/const_color.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

enum RegisterOption { email, sms }

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  RegisterController registerController = new RegisterController();
  AuthCredentials authCredentials = AuthCredentials();
  bool checkOption = false;
  // _site is the variable that receives register option and keeps
  RegisterOption _site = RegisterOption.email;

  final emailPhoneNumberController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    confirmPasswordController.dispose();
    newPasswordController.dispose();
    emailPhoneNumberController.dispose();
    super.dispose();
  }

  String hintText() {
    if (_site == RegisterOption.email) {
      return "Email";
    } else {
      return "Phone number";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              ThemeColors.Background,
              ThemeColors.LightBackground,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 32, right: 32, top: 70, bottom: 0),
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50),
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
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                activeColor: Color(0xFF4EB181),
                                value: RegisterOption.email,
                                groupValue: _site,
                                onChanged: (RegisterOption value) {
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
                                value: RegisterOption.sms,
                                groupValue: _site,
                                onChanged: (RegisterOption value) {
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
                          const SizedBox(height: 10),
                          Column(
                            children: [
                              Form(
                                autovalidateMode: AutovalidateMode.disabled,
                                child: TextFormField(
                                  controller: emailPhoneNumberController,
                                  keyboardType: hintText() == "Email" ? TextInputType.emailAddress : TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: hintText(),
                                    hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFFAAAAAA),
                                        fontFamily: 'Roboto'),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Divider(
                                color: Color(
                                  0xffd2d2d2,
                                ),
                                // endIndent: 20,
                                // indent: 20,
                              ),
                              TextFormField(
                                controller: newPasswordController,
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: 'New password',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFAAAAAA),
                                      fontFamily: 'Roboto'),
                                  border: InputBorder.none,
                                ),
                              ),
                              Divider(
                                color: Color(
                                  0xffd2d2d2,
                                ),
                              ),
                              TextFormField(
                                controller: confirmPasswordController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Confirm password',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFAAAAAA),
                                      fontFamily: 'Roboto'),
                                  border: InputBorder.none,
                                ),
                              ),
                              Divider(
                                color: Color(
                                  0xffd2d2d2,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              CustomCheckBox(
                                onCheckedBoxChanged: (value) {
                                  setState(() {
                                    this.checkOption = value;
                                  });
                                },
                                isChecked: checkOption,
                                activeColor: Color(0xFFFFFFFF),
                              ),
                              const SizedBox(width: 16),
                              // Checkbox(
                              //   onChanged: (value) {
                              //     setState(() {
                              //       this.checkOption = value;
                              //     });
                              //   },
                              //   checkColor: Color(0xFF4EB181),
                              //   activeColor: Color(0xFFFFFFFF),
                              //   value: checkOption,
                              // ),
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
                                          fontFamily: 'Roboto',
                                        ),
                                        children: <TextSpan>[],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              children: [
                                Container(
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
                                  height: 45.02,
                                  width: 130,
                                  child: FlatButton(
                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      String authType = "";
                                      if (hintText() == "Email") {
                                        authType = "email";
                                        authCredentials.email =
                                            emailPhoneNumberController.text
                                                .trim();
                                      } else {
                                        authType = "phoneNumber";
                                        authCredentials.phoneNumber =
                                            emailPhoneNumberController.text
                                                .trim();
                                      }
                                      // check if passwords match
                                      if (passwordsMatch()) {
                                        registerController
                                            .firstTimeLogin(
                                                authCredentials, authType)
                                            .then((result) => {
                                                  if (result == "success" &&
                                                      this.checkOption == true)
                                                    {
                                                      Navigator.pushNamed(
                                                          context,
                                                          AppRoutes
                                                              .verifyPasscodePage)
                                                    }
                                                  else
                                                    {
                                                      _scaffoldKey.currentState
                                                          .showSnackBar(
                                                              SnackBar(
                                                        content: Text(
                                                            "Registration Failed"),
                                                        backgroundColor:
                                                            Colors.red[600],
                                                        duration: Duration(
                                                            seconds: 3),
                                                      ))
                                                    }
                                                });
                                      } else {
                                        _scaffoldKey.currentState
                                            .showSnackBar(SnackBar(
                                          content: Text("Invalid Password"),
                                          backgroundColor: Colors.red[600],
                                          duration: Duration(seconds: 3),
                                        ));
                                      }
                                      if (checkOption == false) {
                                        _scaffoldKey.currentState
                                            .showSnackBar(SnackBar(
                                          content:
                                              Text("Check Terms and condtion"),
                                          backgroundColor: Colors.red[600],
                                          duration: Duration(seconds: 1),
                                        ));
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(width: 20),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, AppRoutes.loginPage);
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue,
                                    ),
                                  ),
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
                    left: 24,
                    right: 24,
                    height: 80,
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
        ),
      ),
    );
  }

  bool passwordsMatch() {
    String newPassword = newPasswordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if (newPassword == confirmPassword && newPassword.isNotEmpty) {
      authCredentials.password = newPassword;
      return true;
    } else {
      return false;
    }
  }
}

class CustomCheckBox extends StatefulWidget {
  final bool isChecked;
  final Duration transitionDuration;
  final Function(bool isChecked) onCheckedBoxChanged;
  final Color inactiveColor;
  final Color activeColor;

  const CustomCheckBox({
    Key key,
    this.isChecked,
    this.onCheckedBoxChanged,
    this.transitionDuration = const Duration(milliseconds: 300),
    this.inactiveColor,
    this.activeColor = const Color(0xFF4e8fda),
  }) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: widget.transitionDuration, lowerBound: 0.5);
  }

  @override
  void didUpdateWidget(covariant CustomCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isChecked && !oldWidget.isChecked) {
      _controller.forward();
    } else if (!widget.isChecked && oldWidget.isChecked) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onCheckedBoxChanged(!widget.isChecked);
      },
      child: AnimatedContainer(
        duration: widget.transitionDuration,
        decoration: BoxDecoration(
          color: widget.isChecked ? Colors.transparent : Colors.transparent,
          border: Border.all(
            color: widget.isChecked
                ? const Color(0xFF481351)
                : const Color(0xFF481351),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: widget.isChecked
            ? ScaleTransition(
                scale: _controller,
                child: const Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 20,
                ),
              )
            : const SizedBox(width: 20, height: 20),
      ),
    );
  }
}
