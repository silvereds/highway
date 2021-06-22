import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/bottomNavigationBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';

class ChangeDevicePage extends StatefulWidget {
  @override
  _ChangeDevicePageState createState() => _ChangeDevicePageState();
}

class _ChangeDevicePageState extends State<ChangeDevicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      drawer: NavDrawer(),
      appBar: AppBarView(),
      bottomNavigationBar: BottomNavigationBarView(),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 55, 20, 20),
          height: 400,
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
                offset: Offset(
                  0,
                  1,
                ),
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Change Device Alias",
                  style: TextStyle(
                    color: Color(
                      0xff14a09f,
                    ),
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                  ),
                  textAlign: TextAlign.center,
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
                          hintText: 'Name',
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
                          hintText: 'Phone Nmmber',
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
              SizedBox(
                height: 30,
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
            ],
          ),
        ),
      ),
    );
  }
}
