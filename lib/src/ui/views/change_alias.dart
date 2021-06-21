import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/bottomNavigationBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';

class ChangeAliasView extends StatefulWidget {
  @override
  _ChangeAliasViewState createState() => _ChangeAliasViewState();
}

class _ChangeAliasViewState extends State<ChangeAliasView> {
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
            height: 380,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Color(
                    0x23000000,
                  ),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Change Alias",
                    style: TextStyle(
                      color: Color(
                        0xff14a09f,
                      ),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Enter new Account Alias below.",
                        style: TextStyle(
                          color: Color(
                            0xff999999,
                          ),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Alias",
                        style: TextStyle(
                          color: Color(
                            0xff14a09f,
                          ),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                        ),
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                      Divider(
                        color: Color(
                          0xff27ae60,
                        ),
                        thickness: 2,
                        indent: 30,
                        endIndent: 30,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                              minWidth: 97,
                              height: 37,
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
                              height: 40,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              onPressed: () {
                                print(' Account Blocked');
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
