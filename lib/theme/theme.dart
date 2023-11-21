import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromRGBO(9, 16, 34, 1),

  primaryColor: Convector().getMaterialColor(const Color.fromRGBO(0, 0, 0, 0.75)),

  primarySwatch: Convector().getMaterialColor(const Color.fromRGBO(0, 0, 0, 0.75)),

  tabBarTheme: TabBarTheme(
    labelStyle: TextStyle(
      foreground: Paint()..shader = const LinearGradient(
          colors: <Color>[
            Color.fromRGBO(90, 105, 237, 1),
            Color.fromRGBO(52, 129, 163, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
      ).createShader(const Rect.fromLTRB(0.0, 0.0, 400.0, 200.0))
    ),
    unselectedLabelStyle: const TextStyle(
      color: Colors.white54
    ),
    unselectedLabelColor: Colors.white54,
  ),

  textTheme: const TextTheme(
    titleMedium: TextStyle(color: Colors.white, fontSize: 17,fontFamily:"Sarala"),

    labelMedium: TextStyle(color: Colors.white54, fontSize: 17,fontFamily:"Sarala"),
    labelSmall: TextStyle(color: Color.fromRGBO(10, 132, 255, 1), fontSize: 17,fontFamily:"Sarala"),

    bodyMedium: TextStyle(color: Colors.white, fontSize: 17,fontFamily:"Sarala"),
    bodySmall: TextStyle(color: Colors.white30, fontSize: 15,fontFamily:"Sarala")
  ),
);

class Convector {
    MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;
    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),};

    return MaterialColor(color.value, shades);
  }
}
