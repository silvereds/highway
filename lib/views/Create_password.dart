import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:mobile/views/Login_page.dart';

class CreatePassword extends StatefulWidget {
  @override
  _CreatePasswordState createState() => _CreatePasswordState();
}


class _CreatePasswordState extends State<CreatePassword> {

    
  

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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
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
