import 'package:flutter/material.dart';

class WebColors {
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static Color scaffoldbg = const Color.fromARGB(255, 239, 239, 239);
  static Color grey = const Color.fromARGB(255, 217, 217, 217);
}

class WebImages {
  static Widget designer = Image.asset("assets/images/designer_ill.png");
  static Widget appFlowy = Image.asset("assets/images/af.png");
  static Widget appFlowy2 = Image.asset("assets/images/af2.png");
  static Widget supaBase = Image.asset("assets/images/sb.png");
}

class WebIcons {
  static Widget linkedIn = Image.asset("assets/icons/LinkedIn.png");
  static Widget gitHub = Image.asset("assets/icons/GitHub.png");
  static Widget figma = Image.asset("assets/icons/Figma.png");
  static Widget flutter = Image.asset("assets/icons/Flutter.png");
  static Widget python = Image.asset("assets/icons/Python.png");
  static Widget xd = Image.asset("assets/icons/Adobe_XD.png");
}

class WebTheme {
  static TextTheme webTextTheme = TextTheme(
    headlineLarge: TextStyle(
      color: WebColors.grey,
      fontFamily: "AlfaSlabOne",
      fontSize: 48,
    ),
    titleLarge: const TextStyle(
      fontFamily: "AlfaSlabOne",
      fontSize: 32,
    ),
    bodyLarge: const TextStyle(
      fontFamily: "JosefinSlab",
    ),
    bodyMedium: const TextStyle(
      fontFamily: "Inter",
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodySmall: const TextStyle(
      fontFamily: "Inter",
      fontSize: 14,
    ),
  );

  static ThemeData webTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: webTextTheme,
    scaffoldBackgroundColor: WebColors.scaffoldbg,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(WebColors.black),
        foregroundColor: MaterialStateProperty.all<Color>(WebColors.white),
        textStyle:
            MaterialStateProperty.all<TextStyle>(webTextTheme.bodyLarge!),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(WebColors.black),
        textStyle:
            MaterialStateProperty.all<TextStyle>(webTextTheme.bodyLarge!),
      ),
    ),
  );
}
