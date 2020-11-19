import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:mobile/Login_views/under_construction.dart';
import 'package:flutter/gestures.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:mobile/Transactions_views/dashboard.dart';

class VerifyIdentity extends StatefulWidget {
  @override
  _VerifyIdentityState createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [ThemeColors.Background, ThemeColors.LightBackground])),
        padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Text(
                          'Verify your Identity',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 28, /*fontFamily:*/
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "A short code has been sent to your phone number via SMS. Please enter the code below to verify your identity",
                        style: TextStyle(
                          color: ThemeColors.VerifyIdentityText,
                          fontSize: 20,
                          height: 1.5,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: '  Resend Code',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: ThemeColors.ResendCode,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto'),
                              recognizer: TapGestureRecognizer()
                                 ..onTap = (){
                                      print('Resend code');
                                    }
                            )
                          ]),
                        ),
                      ),
                      SizedBox(height: 30),
                      PinCodeTextField(
                        appContext: context,
                        length: 5,
                        onChanged: (valu) {
                          print(valu);
                        },
                        pastedTextStyle: TextStyle(
                          color: ThemeColors.CheckColor,
                          fontWeight: FontWeight.bold,
                        ),
                        obscureText: false,
                        obscuringCharacter: '*',
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5.0),
                            fieldHeight: 86,
                            fieldWidth: 32,
                            activeFillColor: Colors.green),
                        cursorColor: Colors.black,
                        animationDuration: Duration(milliseconds: 300),
                        keyboardType: TextInputType.number,
           
                      
                        
                        onCompleted: (v) {
                          print("Completed");
                        },
                      ),
                      SizedBox(height: 20),
                    
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            FlatButton(
                                minWidth: 133,
                                height: 40.02,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: BorderSide(color: ThemeColors.Buttons),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DashBoard()),
                                  );
                                },
                                color: ThemeColors.Buttons,
                                textColor: Color(0xFFFFFFFF),
                                child: Text(
                                  "Verify",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
