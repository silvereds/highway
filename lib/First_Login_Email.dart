import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';

class LoginEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('HIGHWEH', style: TextStyle(color: Colors.green)),
        centerTitle: true,
      ),
      body: Container(
        color: ThemeColors.background,
        padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80),
                    Text(
                      'Login with:',
                      style: TextStyle(color: Colors.green),
                    ),
                    
                    //CONTINUE BUILDING HERE
                  ],
                ),
              ),
              Positioned(
                top: -45,
                left: 30,
                child: Container(
                  color: Colors.green,
                  height: 100,
                  width: 250,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
