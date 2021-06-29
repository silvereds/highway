import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/providers/form_provider.dart';
import 'package:mobile/src/ui/shared/routes.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  // _site is the variable that recieves registerOption and keeps
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
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
        height: MediaQuery.of(context).size.height,
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
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.16),
            child: Center(
              child: Stack(
                alignment: AlignmentDirectional.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 55),
                        Text(
                          'Enter your emai: ',
                          style: TextStyle(
                            color: Color(0xFF4EB181),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                child:
                                    Consumer(builder: (context, watch, child) {
                                  final validation = watch(
                                      ValidationProvider.validationProvider);

                                  return Form(
                                    key: _formKey,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          controller: emailController,
                                          onChanged: (v) =>
                                              validation.validateEmail(v),
                                          decoration: InputDecoration(
                                            errorText: validation.email.error,
                                            icon: Icon(Icons.person),
                                            hintText: 'Email or Phone number',
                                            hintStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFAAAAAA),
                                              fontFamily: 'Roboto',
                                            ),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                        Divider(color: Colors.grey),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    4,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(
                                                        0x3d109cf1,
                                                      ),
                                                      blurRadius: 10,
                                                    ),
                                                  ],
                                                ),
                                                child: FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                    side: BorderSide(
                                                        color: ThemeColors
                                                            .Buttons),
                                                  ),
                                                  child: Text(
                                                    'Submit',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'Poppins',
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .pushNamed(AppRoutes
                                                            .resetPasswordScreen);
                                                  },
                                                  color: Color(0xFF4EB181),
                                                  textColor: Color(0xFFFFFFFF),
                                                  height: 33,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              ),
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
                    height: 70,
                    child: Container(
                      child: Center(
                        child: Text(
                          "Reset password",
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
                        borderRadius: BorderRadius.circular(8),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
