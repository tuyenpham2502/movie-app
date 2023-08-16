import 'package:flutter/material.dart';

class AppColors {
  static const Color white50 = Color.fromRGBO(255, 255, 255, 0.5);
  static const Color white70 = Color.fromRGBO(255, 255, 255, 0.7);
  static const Color yellow = Color(0xFFFFC107);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color slateGray = Color.fromRGBO(171, 173, 189, 1);
  static const Color stormyBlue = Color.fromRGBO(66, 71, 106, 1);
  static const Color midNightBlue = Color.fromRGBO(21, 29, 59, 1);
  static const Color darkBlue = Color.fromRGBO(11, 15, 47, 1);
  static const Color navyBlue = Color.fromRGBO(5, 17, 56, 1);
  static const Color royalBlue = Color.fromRGBO(30, 53, 119, 1);
  static const Color skyBlue = Color.fromRGBO(61, 88, 248, 1);
  static const Color turquoise = Color.fromRGBO(72, 202, 231, 1);
  static const Color turquoise10 = Color.fromRGBO(0, 255, 255, 0.1);
  static const Color cornFlowerBlue = Color.fromRGBO(44, 75, 161, 1);
  static const Color darkSkyBlue = Color.fromRGBO(62, 96, 249, 1);
  static const Color coralPink = Color(0xFFFF5C83);
  static const LinearGradient skyBlueGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(62, 96, 249, 1),
      Color.fromRGBO(61, 84, 248, 1),
    ],
  );
  static const LinearGradient electricBlueGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment(0.2, 0.94), // Equivalent to (134/360, 0.94)
    colors: [
      Color(0xFF449EFF),
      Color(0xFF1DC7F7),
    ],
  );
  static const LinearGradient bannerGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color.fromRGBO(17, 29, 66, 1),
      Color.fromRGBO(17, 29, 66, 0),
    ],
  );
  static const LinearGradient bannerGradient2 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(17, 29, 66, 1),
      Color.fromRGBO(17, 29, 66, 0),

    ],
  );

  static const LinearGradient bannerGradient3 = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color.fromRGBO(17, 29, 66, 1),
      Color.fromRGBO(17, 29, 66, 0),
    ],
  );

  static const LinearGradient promoGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF3E60F9), Color(0xFF3D54F8)],
    stops: [0.0, 1.0],
    transform: GradientRotation(151 * (3.1415926535897932 / 180.0)),
  );

  static const BoxShadow promoShadow = BoxShadow(
    color: Color.fromRGBO(83, 125, 236, 0.10),
    offset: Offset(22.90076446533203, 11.450382232666016),
    blurRadius: 68.7022933959961,
    spreadRadius: 0,
  );

  static const LinearGradient myWalletGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFF449EFF),
      Color(0xFF1DC7F7),
    ],
    stops: [0, 0.94], // Corresponding to the color stops in the CSS code
  );

  static const BoxShadow myWalletBoxShadow = BoxShadow(
    offset: Offset(9.12547492980957, 9.12547492980957),
    blurRadius: 91.25475311279297,
    spreadRadius: 0,
    color: Color.fromRGBO(62, 94, 244, 0.10),
  );


}