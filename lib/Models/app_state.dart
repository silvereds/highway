import 'package:flutter/material.dart';


class AppState {
  String email;
  String phoneNumber;



 AppState({@required this.email, this.phoneNumber,  });

// named constructor with another instance of AppState class

AppState.fromAppState(AppState another){
 email = another.email;
 phoneNumber = another.phoneNumber;

 

}
}

