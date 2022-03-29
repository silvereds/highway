import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:mobile/src/core/common/utils.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/providers/form_provider.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/core/services/services.dart';
import 'package:mobile/src/routes.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/shared/routes.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:mobile/src/ui/widgets/widgets.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// https://79029730-aa0b-4bdb-b648-fbea0fccbff5.mock.pstmn.io/branches
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // _site is the variable that recieves registerOption and keeps
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _emailOrPhoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';
  String _userAgent = '';
  String _phoneNumber = '';

  bool _isLoading = false;

  // var _isPasscodeVerify;

  void _getUserAgent() async {
    _userAgent = await SharedPrefService().getString('deviceName');
  }

  @override
  void initState() {
    super.initState();
    // _isPassCodeVerify();
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    _getUserAgent();
  }

  @override
  void dispose() {
    _emailOrPhoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

// Login user with email and password
  void _loginWithEmailAndPassword() async {
    // Remove the keyboard when the button is pressed
    FocusScope.of(context).unfocus();

    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      setState(() {
        _isLoading = true;
      });
      try {
        await context
            .read(AuthProvider.authProvider)
            .login(
              User(
                email: _email.trim(),
                password: _password.trim(),
                phone: _phoneNumber.trim(),
                agent: _userAgent,
              ),
            )
            .then((_) {
                        setState(() {
                          _isLoading = false;
                        });
                        showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Text(AppLocalizations.of(context).shortCodeText),
                          actions: [
                            TextButton(
                              onPressed: () {
                                _emailOrPhoneNumberController.clear();
                                _passwordController.clear();
                                Navigator.of(context).pop();
                                Navigator.of(context).pushNamed(
                                  RouteGenerator.verifyPasscodePage,
                                  arguments: User(
                                    email: _email.trim(),
                                    password: _password.trim(),
                                    phone: _phoneNumber.trim(),
                                    agent: _userAgent,
                                  ),
                                );
                              },
                              child: Text('OK'),
                            )
                          ],
                        ),
                      );
                        });
            } catch (e) {
              setState(() {
                _isLoading = false;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    parseApiError(e),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            }
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
        brightness: Brightness.dark,
      ),
      body: ModalProgressHUD(
        inAsyncCall: _isLoading,
        child: Container(
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
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.16),
              child: Center(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20.0),
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
                            AppLocalizations.of(context).loginWith,
                            style: TextStyle(
                              color: Color(0xFF4EB181),
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                  child: Consumer(
                                      builder: (context, watch, child) {
                                    final validation = watch(
                                        ValidationProvider.validationProvider);

                                    return Form(
                                      key: _formKey,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            controller:
                                                _emailOrPhoneNumberController,
                                            keyboardType: TextInputType.text,
                                            onChanged: (v) => validation
                                                .validateEmailOrPhoneNumber(v),
                                            onSaved: (val) =>
                                                _emailOrPhoneNumberController
                                                        .text[0]
                                                        .contains(
                                                            RegExp(r"^[0-9]$"))
                                                    ? _phoneNumber = val
                                                    : _email = val,
                                            decoration: InputDecoration(
                                              errorText: validation.email.error,
                                              prefixIcon: Icon(Icons.person),
                                              hintText:
                                                  AppLocalizations.of(context)
                                                      .hintEmailPhone,
                                              hintStyle: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFFAAAAAA),
                                                fontFamily: 'Roboto',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          TextFormField(
                                            controller: _passwordController,
                                            onSaved: (val) => _password = val,
                                            obscureText: true,
                                            onChanged: (v) =>
                                                validation.validatePassword(v),
                                            decoration: InputDecoration(
                                              errorText:
                                                  validation.password.error,
                                              prefixIcon: Icon(Icons.lock),
                                              hintText:
                                                  AppLocalizations.of(context)
                                                      .hintPasword,
                                              hintStyle: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFFAAAAAA),
                                                fontFamily: 'Roboto',
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 30),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Column(
                                              children: [
                                                HighwehButton(
                                                  color: ThemeColors.Buttons,
                                                  height: 40.02,
                                                  text: AppLocalizations.of(
                                                          context)
                                                      .loginText,
                                                  width: 120,
                                                  onPress: validation
                                                          .isValidateAuthForm
                                                      ? _loginWithEmailAndPassword
                                                      : null,
                                                ),
                                                TextButton(
                                                  onPressed: () async {
                                                    Navigator.of(context)
                                                        .pushNamed(AppRoutes
                                                            .forgotPasswordScreen);
                                                  },
                                                  child: Text(
                                                    AppLocalizations.of(context)
                                                        .forgotPassword,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.blue,
                                                    ),
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
                    BoxTitle(title: AppLocalizations.of(context).loginText),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


     // Container(
                                          //   alignment: Alignment.bottomRight,
                                          //   child: Column(
                                          //     children: [
                                          //       TextButton(
                                          //         onPressed: () {},
                                          //         child: Text(
                                          //           AppLocalizations.of(context)
                                          //               .loginText,
                                          //           style: TextStyle(
                                          //               fontSize: 16,
                                          //               fontFamily: 'Poppins',
                                          //               color:
                                          //                   Color(0xFFFFFFFF)),
                                          //         ),
                                          //       ),
                                          //       TextButton(
                                          //         onPressed: () async {
                                          //           Navigator.of(context)
                                          //               .pushNamed(AppRoutes
                                          //                   .forgotPasswordScreen);
                                          //         },
                                          //         child: Text(
                                          //           AppLocalizations.of(context)
                                          //               .forgotPassword,
                                          //           style: TextStyle(
                                          //             fontSize: 16,
                                          //             color: Colors.blue,
                                          //           ),
                                          //         ),
                                          //       ),
                                          //     ],
                                          //   ),
                                          // ),















//  Container(
//                                                     height: 35.02,
//                                                     width: 120,
//                                                     decoration: BoxDecoration(
//                                                       color: Color(
//                                                         0xff4eb181,
//                                                       ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                         4,
//                                                       ),
//                                                       boxShadow: [
//                                                         BoxShadow(
//                                                           color: Color(
//                                                             0x3d109cf1,
//                                                           ),
//                                                           blurRadius: 10,
//                                                         ),
//                                                       ],
//                                                     ),
//                                                     child: TextButton(
//                                                       onPressed: () {},
//                                                       child: Text(
//                                                         AppLocalizations.of(
//                                                                 context)
//                                                             .loginText,
//                                                         style: TextStyle(
//                                                             fontSize: 16,
//                                                             fontFamily:
//                                                                 'Poppins',
//                                                             color: Color(
//                                                                 0xFFFFFFFF)),
//                                                       ),
//                                                     )
                                                    // FlatButton(
                                                    //   shape:
                                                    //       RoundedRectangleBorder(
                                                    //     borderRadius:
                                                    //         BorderRadius.circular(
                                                    //             5.0),
                                                    //     side: BorderSide(
                                                    //         color: ThemeColors
                                                    //             .Buttons),
                                                    //   ),
                                                    //   child: Text(
                                                    //     AppLocalizations.of(
                                                    //             context)
                                                    //         .loginText,
                                                    //     style: TextStyle(
                                                    //       fontSize: 16,
                                                    //       fontFamily: 'Poppins',
                                                    //     ),
                                                    //   ),
                                                    //   onPressed: validation
                                                    //           .isValidateAuthForm
                                                    //       ? _loginWithEmailAndPassword
                                                    //       : null,
                                                    //   color: Color(0xFF4EB181),
                                                    //   textColor:
                                                    //       Color(0xFFFFFFFF),
                                                    //   height: 33,
                                                    // ),
                                   //                 ),
