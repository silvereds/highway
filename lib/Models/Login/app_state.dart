import 'package:flutter/material.dart';


class AppState {
 String email;
 String phoneNumber;
 String id;


 AppState({@required this.email, this.phoneNumber });

// named constructor with another instance of AppState class

AppState.fromAppState(AppState another){
 email = another.email;
 phoneNumber = another.phoneNumber;
 

}
}

