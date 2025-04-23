import 'package:flutter/material.dart';

class AppStyles {
 
  static const Color primaryTextColor = Color(0xFFFFFFFF);
  static const Color secondaryTextColor = Colors.white;
  static const Color accentColor = Color(0xFFF35F09); 


  static const String fontFamily = 'AppleGaramond';


  static TextStyle titleStyle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: const Color.fromARGB(255, 8, 6, 6),
  );

 
  static TextStyle subtitleStyle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: const Color(0xFF060606),
  );


  static TextStyle bodyStyle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: 16,

    color: const Color(0xFF040303),
  );


  static TextStyle whiteBoldStyle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: secondaryTextColor,
  );

 
  static TextStyle whiteNormalStyle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: secondaryTextColor,
  );


  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: primaryTextColor,
    foregroundColor: secondaryTextColor,
    textStyle: whiteBoldStyle,
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  );

 
  static const Color orangeButtonColor = Color(0xFFFF6B35);


  static ButtonStyle orangeButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: orangeButtonColor,
    foregroundColor: Colors.white,
    elevation: 0,
    textStyle: whiteBoldStyle.copyWith(fontSize: 20, letterSpacing: 2.1),
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 90),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(17),
      // ignore: deprecated_member_use
      side: BorderSide(color: orangeButtonColor.withOpacity(0.3), width: 2),
    ),
  );


  static ButtonStyle smallButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: primaryTextColor,
    textStyle: bodyStyle.copyWith(fontSize: 14),
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  );

 
  static InputDecorationTheme textFieldTheme = InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFFFFFFF),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: const Color(0xFF050404)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: const Color(0xFF090707)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),

      borderSide: BorderSide(color: const Color(0xFF0C0A0A), width: 2),
    ),
    labelStyle: TextStyle(
      color: const Color(0xFF050404),
      fontFamily: fontFamily,
    ),
    hintStyle: TextStyle(
      // ignore: deprecated_member_use
      color: const Color(0xFF171515).withOpacity(0.7),
      fontFamily: fontFamily,
    ),
  );

 
  static TextStyle textFieldTextStyle = TextStyle(
    color: const Color.fromARGB(255, 17, 16, 16),
    fontFamily: fontFamily,

    fontSize: 16,
  );

 
  static TextStyle featuredTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: Colors.white,
  );

  static TextStyle loginTitleStyle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 28,
    color: primaryTextColor,
    height: 1.3,
  );
}
