import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/common/utils.dart';
import 'package:mobile/src/core/providers/form_provider.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/routes.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:mobile/src/ui/widgets/box_title.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class ResetPasswordScreen extends StatefulWidget {
  final String email;

  const ResetPasswordScreen({Key key, this.email}) : super(key: key);
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  // _site is the variable that recieves registerOption and keeps
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _passCodeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String _password = '';
  String _confirmPassword = '';
  String _passCode = '';

  bool _isLoading = false;

  // Reset user password
  void _resetPassword() async {
    FocusScope.of(context).unfocus();

    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      setState(() {
        _isLoading = true;
      });

      print('Email: ' + widget.email);
      print('Password' + _password);

      try {
        await context
            .read(AuthProvider.authProvider)
            .resetPassword(widget.email, _passCode)
            .then((_) {
          setState(() {
            _isLoading = false;
          });

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text('Password reset successfully.'),
              actions: [
                TextButton(
                  onPressed: () {
                    _passwordController.clear();
                    _confirmPasswordController.clear();
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        RouteGenerator.loginPage, (route) => false);
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
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _passCodeController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
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
      body: Consumer(builder: (context, watch, __) {
        final state = watch(AuthProvider.authProvider.state);

        return ModalProgressHUD(
          inAsyncCall: _isLoading,
          child: SingleChildScrollView(
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
                              const SizedBox(height: 30),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                      child: Consumer(
                                          builder: (context, watch, _) {
                                        final validation = watch(
                                            ValidationProvider
                                                .validationProvider);

                                        return Form(
                                          key: _formKey,
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                controller: _passwordController,
                                                onChanged: (v) => validation
                                                    .validateNewPassword(v),
                                                onSaved: (val) =>
                                                    _password = val,
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                  errorText: validation
                                                      .newPassword.error,
                                                  icon: Icon(Icons.lock),
                                                  hintText: 'password',
                                                  hintStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFFAAAAAA),
                                                    fontFamily: 'Roboto',
                                                  ),
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                              Divider(color: Colors.grey),
                                              TextFormField(
                                                controller:
                                                    _confirmPasswordController,
                                                onSaved: (val) =>
                                                    _confirmPassword = val,
                                                obscureText: true,
                                                onChanged: (v) => validation
                                                    .validateConfirmNewPassword(
                                                        v),
                                                decoration: InputDecoration(
                                                  errorText: validation
                                                      .newConfirmPassword.error,
                                                  icon: Icon(Icons.lock),
                                                  hintText: 'Confirm password',
                                                  hintStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFFAAAAAA),
                                                    fontFamily: 'Roboto',
                                                  ),
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                              Divider(color: Colors.grey),
                                              TextFormField(
                                                controller: _passCodeController,
                                                onSaved: (val) =>
                                                    _passCode = val,
                                                obscureText: true,
                                                onChanged: (v) => validation
                                                    .validatePasscode(v),
                                                decoration: InputDecoration(
                                                  errorText:
                                                      validation.passCode.error,
                                                  icon: const Icon(
                                                      Icons.keyboard),
                                                  hintText: 'Passcode',
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
                                                alignment:
                                                    Alignment.bottomRight,
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
                                                            BorderRadius
                                                                .circular(
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
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                          side: BorderSide(
                                                              color: ThemeColors
                                                                  .Buttons),
                                                        ),
                                                        child: Text(
                                                          'Submit',
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily:
                                                                'Poppins',
                                                          ),
                                                        ),
                                                        onPressed:
                                                            _resetPassword,
                                                        color:
                                                            Color(0xFF4EB181),
                                                        textColor:
                                                            Color(0xFFFFFFFF),
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
                        BoxTitle(title: 'Create new password'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
