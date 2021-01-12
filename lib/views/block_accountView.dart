import 'package:flutter/material.dart';
import 'package:mobile/shared/bottomNavigationBar.dart';



class BlockAccountView extends StatefulWidget {
  @override
  _BlockAccountViewState createState() => _BlockAccountViewState();
}

class _BlockAccountViewState extends State<BlockAccountView> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F6F8),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => UnderConstruction()),
              // );
            },
            iconSize: 36,
          ),
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/images/HIGHWEH_HORIZONTAL.png',
            fit: BoxFit.contain,
            height: 45,
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: GestureDetector(
                child: CircleAvatar(
                  radius: 25,
                  child: Container(
                      decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBarView(),
        body: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 55, 20, 20),
            height: 380,
          //  width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular( 6),
              boxShadow: [
                BoxShadow(color: Color(0x23000000, ),
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
                    "Block Account",
                    style: TextStyle(
                      color: Color(0xFF14A09F),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: Text(
                      "You are about to block your account.",
                      style: TextStyle(
                        color: Color(
                          0xFF999999,
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: 150,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Enter your password to confrim",
                          style: TextStyle(
                            color: Color(
                              0xff14a09f,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
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
                            0xFFD2D2D2,
                          ),
                          thickness: 2,
                          indent: 5,
                          endIndent: 5,
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
                                  "Block",
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
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
