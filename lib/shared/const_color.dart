import 'package:flutter/material.dart';

// We'll use this through out our project in other not to
// use colors.() in our prject
// Make sure to assign all colors here for refrerence

class ThemeColors {
  static const Background = Color(0xFF02AAB0);
  static const LightBackground = Color(0xFF00CDAC); 
  static const  Welcome = Color(0xFF4EB181);
  static const Timeline = Color(0xFFE91E63);
  static const Code = Color(0xFF9C27B0);
  static const Group = Color(0xFF4CAF50);
  static const RegisterC = Color(0xFF00CDAC);
  static const RegisterCl = Color(0xFF4EB181);
  static const white = Colors.white;
  static const CheckColor = Color(0xFF4EB181);
  static const CheckText = Color(0xFFAAAAAA);
   static const Buttons = Color(0xFF4EB181);
  
  static const black = Color(0xFF000000);
  static const grey = Color(0xFF999999);

  static const BackgroundGradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [ThemeColors.Background, ThemeColors.LightBackground]);

       static const RegisterContainer = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [ThemeColors.RegisterC, ThemeColors.RegisterCl]);



}
