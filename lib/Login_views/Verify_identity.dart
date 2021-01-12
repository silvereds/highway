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
                            fontSize: 28, fontFamily: 'Poppins', fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "A short code has been sent to your phone number via SMS. Please enter the code below to verify your identity",
                        style: TextStyle(
                          color: Color(0xFFCACACA),
                          fontSize: 18,
                          height: 1.5,
                         fontFamily: 'Poppins',
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
                                  decoration: TextDecoration.none,
                                  color: Color(0xFF2AA694),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
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
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: ThemeColors.Buttons),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 13, fontFamily: 'Poppins'),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashBoard()),
                          );
                        },
                        color: Color(0xFF4EB181),
                        textColor: Color(0xFFFFFFFF),
                        height: 33,
                      ),
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
