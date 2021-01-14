import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:mobile/controllers/create_password_controller.dart';
import 'package:mobile/entities/auth-credentials.dart';


class CreatePassword extends StatefulWidget {
  @override
  _CreatePasswordState createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
   AuthCredentials authCredentials = AuthCredentials();

  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void onSave() {
    if (newPasswordController.text == confirmPasswordController.text &&
        confirmPasswordController != null) {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(
          ('newPassword: ' +
              newPasswordController.text +
              ' confirmPw: ' +
              confirmPasswordController.text),
        ),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
      ));
    } else {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(
          ('Passwords do not match'),
        ),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red,
      ));
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
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Create Password',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0xFF14A09F),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w100),
                              ),
                              SizedBox(height: 30),
                              TextFormField(
                                controller: newPasswordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'New Password',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF14A09F),
                                      fontFamily: 'Poppins'),
                                  border: InputBorder.none,
                                ),
                              ),
                              Divider(color: Colors.grey),
                              SizedBox(height: 30),
                              TextFormField(
                                controller: confirmPasswordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Confirm password',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF14A09F),
                                      fontFamily: 'Poppins'),
                                  border: InputBorder.none,
                                ),
                              ),
                              Divider(color: Colors.grey),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: ThemeColors.Buttons),
                          ),
                          child: Text(
                            'Save',
                            style:
                                TextStyle(fontSize: 13, fontFamily: 'Poppins'),
                          ),
                          onPressed: () {
                            onSave();
                          },
                          color: Color(0xFF4EB181),
                          textColor: Color(0xFFFFFFFF),
                          height: 33,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -35,
                  left: 15,
                  height: 63,
                  width: 63,
                  child: Card(
                    elevation: 10,
                    color: ThemeColors.Buttons,
                    child: Center(
                      child: Icon(Icons.lock_outline, color: Color(0xFFFFFFFF)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
