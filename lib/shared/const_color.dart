import 'package:flutter/material.dart';

// We'll use this through out our project in other not to
// use colors.() in our prject
// Make sure to assign all colors here for refrerence

class ThemeColors {
  // Login views

  static const Background = Color(0xFF02AAB0);
  static const LightBackground = Color(0xFF00CDAC);
  static const Welcome = Color(0xFF4EB181);
  static const Timeline = Color(0xFFE91E63);
  static const Code = Color(0xFF9C27B0);
  static const Group = Color(0xFF4CAF50);
  static const RegisterC = Color(0xFF00CDAC);
  static const RegisterCl = Color(0xFF4EB181);
 
  static const CheckColor = Color(0xFF4EB181);
  static const CheckText = Color(0xFFAAAAAA);
  static const Buttons = Color(0xFF4EB181);
  static const TextGreen = Color(0xFF14A09F);
  static const ForgotPassword = Color(0xFF109CF1);
  static const VerifyIdentityText = Color(0xFFCACACA);
  static const ResendCode = Color(0xFF2AA694);
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

// Dashboard

  static const SelectedItemColor = Color(0xFF53B27F);
  
  static const UnSelectedItemColor = Color(0xFF334D6E);
  static const  LightText = Color(0xFF6A707E);
  static const TransferCurrency = Color(0xFF5CB460);
  static const Text = Color(0xFF219653);
  
}
