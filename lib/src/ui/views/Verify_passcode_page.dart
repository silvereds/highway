import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/common/utils.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/core/services/prefs_service.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../routes.dart';

class VerifyPasscodePage extends StatefulWidget {
  final User user;

  const VerifyPasscodePage({Key key, this.user}) : super(key: key);

  @override
  _VerifyPasscodePageState createState() => _VerifyPasscodePageState();
}

class _VerifyPasscodePageState extends State<VerifyPasscodePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _formKey = GlobalKey<FormState>();
  var _isLoading = false;

  String _passcode = '';

  // The function to resend passcode
  void _resendPasscode() async {
    FocusScope.of(context).unfocus();

    try {
      setState(() {
        _isLoading = true;
      });
      await context
          .read(AuthProvider.authProvider)
          .login(
            User(
              phone: widget.user.phone,
              email: widget.user.email,
              password: widget.user.password,
              agent: widget.user.agent,
            ),
          )
          .then((_) {
        setState(() {
          _isLoading = false;
        });

        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Text(
              AppLocalizations.of(context).verificationCode,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
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

  // The function to verify passcode
  void _verifyPasscode(
    String email,
    String password,
    String passcode,
    String agent,
  ) async {
    FocusScope.of(context).unfocus();
    print(email);
    print(passcode);
    print(agent);
    if (_formKey.currentState.validate()) {
      try {
        setState(() {
          _isLoading = true;
        });
        await context
            .read(AuthProvider.authProvider)
            .verifyPasscode(email, password, passcode.toUpperCase(), agent)
            .then((_) {
          setState(() {
            _isLoading = false;
          });
          SharedPrefService().saveBool('isPasscodeVerify', true);
          Navigator.of(context).pushNamedAndRemoveUntil(
              RouteGenerator.homeScreen, (route) => false);
        });
      } catch (e) {
        final String message = AppLocalizations.of(context).errorText;
        setState(() {
          _isLoading = false;
        });

        if (e.toString().isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              'message',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: Colors.red,
          ));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "erreur " + parseApiError(e),
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
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        AppLocalizations.of(context).verifyIdentity,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: ThemeColors.Buttons,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        AppLocalizations.of(context).codeHasBeenSent,
                        style: TextStyle(
                          color: ThemeColors.VerifyIdentityText,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: _resendPasscode,
                        child: Text(
                          AppLocalizations.of(context).resendCode,
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: PinCodeTextField(
                            appContext: context,
                            autoFocus: true,
                            validator: (v) {
                              if (v.isEmpty || v.length < 5) {
                                return AppLocalizations.of(context).errorText;
                              } else {
                                return null;
                              }
                            },
                            obscuringCharacter: '*',
                            textCapitalization: TextCapitalization.characters,
                            pastedTextStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                            length: 5,
                            onChanged: (v) {
                              setState(() {
                                _passcode = v;
                              });
                              print(_passcode);
                            }),
                      ),
                      const SizedBox(height: 6),
                      Center(
                        child: HighwehButton(
                          color: ThemeColors.Buttons,
                          height: 40.32,
                          width: 120.0,
                          onPress: () => _verifyPasscode(
                              widget.user.email,
                              widget.user.password,
                              _passcode,
                              widget.user.agent),
                          text: AppLocalizations.of(context).verify,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
