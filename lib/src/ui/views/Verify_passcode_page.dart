import 'package:flutter/material.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyPasscodePage extends StatefulWidget {
  @override
  _VerifyPasscodePageState createState() => _VerifyPasscodePageState();
}

class _VerifyPasscodePageState extends State<VerifyPasscodePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final pinCodeController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pinCodeController.dispose();
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
            colors: [ThemeColors.Background, ThemeColors.LightBackground],
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: Center(
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
                    'A short code has been send to your phone number via Email. Please enter the code below to verify your identity',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ThemeColors.VerifyIdentityText,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  PinCodeTextField(
                    appContext: context,
                    obscuringCharacter: '*',
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    length: 5,
                    onChanged: (v) {},
                  ),
                  const SizedBox(height: 6),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
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
    );
  }
}
