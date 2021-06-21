import 'package:flutter/material.dart'; 



class FormValidation {

 final formKey = GlobalKey<FormState>();
 final scaffoldKey = GlobalKey<ScaffoldState>(); 

 String _email; 
 String _password;

  void _submitCommand(){

    final form = formKey.currentState;
    if(form.validate()){
      form.save();


      _loginCommand();
    }

  } 

  void _loginCommand(){

   final snackbar = SnackBar(
      content: Text('Email: $_email, password: $_password'),
    );
   
    scaffoldKey.currentState.showSnackBar(snackbar);
  }



 }

