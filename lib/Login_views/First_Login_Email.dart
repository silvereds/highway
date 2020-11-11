import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';


class LoginEmail extends StatefulWidget {
  @override
  _LoginEmailState createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('HIGHWEH', style: TextStyle(color: Colors.green)),
        centerTitle: true,
      ),
      body: Container(
        color: ThemeColors.Background,
        padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            children: [
              Container(
               
               
                
                padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 80),
                    Text(
                      'Login with:',
                      style: TextStyle(color: Colors.green, fontSize: 18, /*fontFamily:*/),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Radio(value: 0, groupValue: 0, onChanged: null,),
                                  Text("Email", style: TextStyle(fontSize: 13, /*fontFamily:*/ ),),
                                  Radio(value: 1, groupValue: 0, onChanged: null,),
                                  Text("SMS",  style: TextStyle(fontSize: 13, /*fontFamily:*/ ),),
                                ],
                           ),

                        Container(
                           
                           child: TextField(decoration:  InputDecoration(prefix: Icon(Icons.mail))),
                        )


                        ],
                      ),
                    )

                    //CONTINUE BUILDING HERE
                  ],
                ),
              ),
              Positioned(
                top: -40,
                left: 15,
                right: 15,
                height: 80,
                
                child: Align(
                  
                                  child: Container(
                                    width: 300,
                    
                   
                    color: ThemeColors.Pcontainer,
                   
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
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
