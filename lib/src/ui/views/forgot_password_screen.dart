import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:mobile/src/core/common/utils.dart';
import 'package:mobile/src/core/providers/form_provider.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/routes.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:mobile/src/ui/widgets/widgets.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/entities/all.dart';
import '../../core/services/prefs_service.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  // _site is the variable that recieves registerOption and keeps
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _emailOrPhoneNumberController = TextEditingController();
  String _email = '';
  String _userAgent = '';
  String _phoneNumber = '';

  var _isLoading = false;
  final _formKey = GlobalKey<FormState>();

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

  // Reset user password
  void _resetPassword() async {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      setState(() {
        _isLoading = true;
      });
      try {
        await context
            .read(AuthProvider.authProvider)
            .forgotPassword(_email.trim())
            .then((_) {
          setState(() {
            _isLoading = false;
          });

          Navigator.of(context).pushNamed(
            RouteGenerator.resetPasswordScreen,
            arguments: (_email.trim()
                //phone: _phoneNumber.trim(),
                //agent: _userAgent,
                ),
          );
        });
      } catch (e) {
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            parseApiError(e),
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.red,
        ));
      }
    }
  }

  @override
  void dispose() {
    _emailOrPhoneNumberController.dispose();
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
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
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
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
                            AppLocalizations.of(context).enterMail,
                            style: TextStyle(
                              color: Color(0xFF4EB181),
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                  child: Consumer(builder: (context, watch, _) {
                                    final validation = watch(
                                        ValidationProvider.validationProvider);

                                    return Form(
                                      key: _formKey,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            controller:
                                                _emailOrPhoneNumberController,
                                            onSaved: (val) =>
                                                _emailOrPhoneNumberController
                                                        .text[0]
                                                        .contains(
                                                            RegExp(r"^[0-9]$"))
                                                    ? _phoneNumber = val
                                                    : _email = val,
                                            onChanged: (v) => validation
                                                .validateEmailOrPhoneNumber(v),
                                            //  .validateResetPasswordEmail(v),
                                            decoration: InputDecoration(
                                              errorText: validation.email.error,
                                              prefixIcon:
                                                  const Icon(Icons.person),
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
                                                    child: HighwehButton(
                                                      color:
                                                          ThemeColors.Buttons,
                                                      height: 80.32,
                                                      width: 120.0,
                                                      onPress: validation
                                                              .isEmailOrPhoneIsValid
                                                          ? _resetPassword
                                                          : null,
                                                      text: AppLocalizations.of(
                                                              context)
                                                          .btnSubmit,
                                                    )),
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
                    BoxTitle(title: AppLocalizations.of(context).resetPassWord),
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
