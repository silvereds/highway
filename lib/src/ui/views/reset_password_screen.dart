import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/common/utils.dart';
import 'package:mobile/src/core/providers/auth_notifier.dart';
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

    if ((_formKey.currentState.validate())) {
      _formKey.currentState.save();

      if (_password != _confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Password doesn't match",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }

      await context
          .read(AuthProvider.authProvider)
          .resetPassword(widget.email, _password, _passCode.toUpperCase());
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
      body: ProviderListener<AuthState>(
        provider: AuthProvider.authProvider.state,
        onChange: (context, state) {
          state.maybeWhen(
            orElse: () {},
            loading: () {
              setState(() {
                _isLoading = true;
              });
            },
            success: () {
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
            },
            failure: (err) {
              setState(() {
                _isLoading = false;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    parseApiError(err),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            },
          );
        },
        child: ModalProgressHUD(
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
                          padding: const EdgeInsets.all(20.0),
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
                                                  prefixIcon: Icon(Icons.lock),
                                                  hintText: 'password',
                                                  hintStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFFAAAAAA),
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 12),
                                              TextFormField(
                                                controller:
                                                    _confirmPasswordController,
                                                onSaved: (val) =>
                                                    _confirmPassword = val,
                                                obscureText: true,
                                                onChanged: (v) => validation
                                                    .validateNewPassword(v),
                                                decoration: InputDecoration(
                                                  errorText:
                                                      validation.password.error,
                                                  prefixIcon: Icon(Icons.lock),
                                                  hintText: 'Confirm password',
                                                  hintStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFFAAAAAA),
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 12),
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
                                                  prefixIcon:
                                                      const Icon(Icons.vpn_key),
                                                  hintText: 'Passcode',
                                                  hintStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFFAAAAAA),
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 30),
                                              _SubmitButton(
                                                onPressed: validation
                                                        .isResetPasswordAuthFormValid
                                                    ? _resetPassword
                                                    : null,
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
        ),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  final void Function() onPressed;
  const _SubmitButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                'Submit',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              onPressed: onPressed,
              color: const Color(0xFF4EB181),
              textColor: const Color(0xFFFFFFFF),
              height: 33,
            ),
          ),
        ],
      ),
    );
  }
}
