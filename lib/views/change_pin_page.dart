import 'package:flutter/material.dart';
import 'package:mobile/shared/bottomNavigationBar.dart';
import 'package:mobile/shared/navDrawer.dart';
import 'package:mobile/shared/appBar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ChangePinPage extends StatefulWidget {
  @override
  _ChangePinPageState createState() => _ChangePinPageState();
}

class _ChangePinPageState extends State<ChangePinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      drawer: NavDrawer(),
      appBar: AppBarView(),
      bottomNavigationBar: BottomNavigationBarView(),
      body: Center(
        child: Container(
           margin: EdgeInsets.fromLTRB(10, 35, 10, 15),
           height: 427,
           width: 338,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  6,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(
                      0x23000000,
                    ),
                    blurRadius: 4,
                    offset: Offset(
                      0,
                      1,
                    ),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                              child: Column(children: [
           SizedBox( height: 20,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
  "Change PIN Code",
  style: TextStyle(
    color: Color(
      0xff14a09f,
    ),
    fontSize: 30,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
  ),
),

SizedBox(height: 20,),


SizedBox(
  child: Text(
    "New PIN Code:",
    style: TextStyle(
      color: Color(
            0xff14a09f,
      ),
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
    ),
  ),
  width: 125,
),
          ],
        ),

         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Center(
             child: PinCodeTextField(
                               
                                appContext: context,
                                length: 5,
                                onChanged: (valu) {
                                  print(valu);
                                },
                                pastedTextStyle: TextStyle(
                                  color: Color(
                0xff219653,
        ),
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
           ),
         ),


          Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        // border: Border.all(
                        //   color: Color(
                        //     0xffd2d2d2,
                        //   ),
                        //   width: 1,
                        // ),

                        ),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xff14a09f),
                                fontFamily: 'Roboto'),
                            border: InputBorder.none,
                          ),
                        ),
                        Divider()
                      ],
                    ),
                  ),
                ),


                    Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                          minWidth: 100,
                          height: 47,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          onPressed: () {
                            print('Cancel');
                          },
                          color: Color(0xFFF44336),
                          textColor: Colors.white,
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      FlatButton(
                          minWidth: 100,
                          height: 47,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          onPressed: () {
                            print(' Change Device');
                          },
                          color: Color(0xFF4EB181),
                          textColor: Colors.white,
                          child: Text(
                            "Save",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                            ),
                          ))
                    ],
                  ),
                ),






                ],),
              ),
           
        ),
      ),
      
    );
  }
}
