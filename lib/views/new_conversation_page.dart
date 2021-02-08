import 'package:flutter/material.dart';

import 'package:mobile/shared/navDrawer.dart';
import 'package:mobile/shared/bottomNavigationBar.dart';
import 'package:mobile/shared/appBar.dart';

class NewConversationPage extends StatefulWidget {
  @override
  _NewConversationPageState createState() => _NewConversationPageState();
}

class _NewConversationPageState extends State<NewConversationPage> {
  String pickTopic = "RFID CARDS";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: Color(0xFFF5F6F8),
      appBar: AppBarView(),
      bottomNavigationBar: BottomNavigationBarView(),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
          width: 333,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(
                  0x3f000000,
                ),
                offset: Offset(
                  0,
                  4,
                ),
                blurRadius: 4,
              ),
            ],
          ),
          child: SingleChildScrollView(
                      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "We Are Here For You",
                    style: TextStyle(
                      color: Color(
                        0xff14a09f,
                      ),
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    print("Frequently Asked Questions");
                  },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '  Start a new conversation below or  read our ',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: Color(0xFF192A3E)),
                        ),
                        TextSpan(
                          text: ' Frequently Asked Questions',
                          style: TextStyle(
                            color: Color(
                              0xFF14A09F,
                            ),
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "Pick a Topic:",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                        color: Color(0xFF14A09F)),
                  ),
                ),
                DropdownButton<String>(
                  underline: null,
                  value: pickTopic,
                  // icon: Icon(Icons.arrow_downward, color: Colors.black,),
                  iconSize: 15,
                  elevation: 10,
                  style: TextStyle(
                    color: Color(
                      0xff323c47,
                    ),
                  ),

                  onChanged: (String newValue) {
                    setState(() {
                      pickTopic = newValue;
                    });
                  },
                  items: <String>[
                    'UPDATE PROFILE',
                    'HELP WITH CARD',
                    'NEED SECOND ACCOUNT',
                    'RFID CARDS'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      "   Enter a Message:",
                      style: TextStyle(
                        color: Color(
                          0xff14a09f,
                        ),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
                Container(
                     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: 308,
                    height: 100,
                    // padding: EdgeInsets.only(
                    //   right: 157,
                    //   top: 12,
                    //   bottom: 59,
                    // ),
                    child: TextFormField(
                    

                      decoration: InputDecoration(
                        hintText: 'Your message here...',
                        hintStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      fontFamily: "Poppins",
    ),
                          border: InputBorder.none,
                      ),

                    ),
                    decoration: BoxDecoration(
                      
                      border: Border.all(
                      color: Colors.black,
                      width: 1,
                      
                    ),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                     
                 ) ),
                 SizedBox(height: 15,),

                        Center(
                  child: Container(
                    height: 42,
                    width: 161,
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
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: FlatButton(
                      onPressed: (){},
                          child: Center(
                      child: Text(
                        "Start conversation",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                      
                    ),
                
                  ),
                ),


              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
