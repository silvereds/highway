import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetPasswordVerifyPasscodeScreen extends StatefulWidget {
  // final User user;

  const ResetPasswordVerifyPasscodeScreen({Key key}) : super(key: key);

  @override
  _ResetPasswordVerifyPasscodeScreenState createState() =>
      _ResetPasswordVerifyPasscodeScreenState();
}

class _ResetPasswordVerifyPasscodeScreenState
    extends State<ResetPasswordVerifyPasscodeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _formKey = GlobalKey<FormState>();
  // var _isLoading = false;

  String _passcode = '';
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
      body: Consumer(
        builder: (context, watch, __) {
          final state = watch(AuthProvider.authProvider.state);
          final isLoading = state.maybeMap(
            orElse: () => false,
            loading: (_) => true,
          );

          return state.maybeWhen(
            orElse: () => Text('Or Else'),
            initial: () => ModalProgressHUD(
              inAsyncCall: isLoading ? true : false,
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
                            const Text(
                              'Verify your Identity',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                color: ThemeColors.Buttons,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "A short code has been send to your email or sms, please enter the code to verify your identity",
                              style: TextStyle(
                                color: ThemeColors.VerifyIdentityText,
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Resend',
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
                                      return 'Please provide a valid code';
                                    } else {
                                      return null;
                                    }
                                  },
                                  obscuringCharacter: '*',
                                  textCapitalization:
                                      TextCapitalization.characters,
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
                              child: ElevatedButton(
                                onPressed: () => context
                                    .read(AuthProvider.authProvider)
                                    .verifyPasscode('client@highweh.com',
                                        'Passe@2709', 'DBHGD', 'mobile-'),
                                child: const Text('Verify'),
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                ),
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
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
