import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:flutter/material.dart';

// MAIN HANDLER COLOR THEMING
const ColorScheme colorScheme = ColorScheme(
  primary: primaryAppcolor,
  primaryVariant:
      Colors.transparent, //No color yet, must be lighter than primary color
  secondary: secondaryAppcolor,
  secondaryVariant: Colors.transparent,
  surface: Colors.transparent,
  background: Colors.white,
  error: Colors.red,
  onPrimary: secondaryAppcolor,
  onSecondary: Colors.white,
  onSurface: Colors.black,
  onBackground: Colors.black,
  onError: Colors.orange,
  brightness: Brightness.light,
);

ThemeData AppTheme(BuildContext context) {
  return ThemeData(
    fontFamily: "Montserrat",
    colorScheme: colorScheme,
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: colorScheme.background,
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 20,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black45,
      ),
      border: InputBorder.none,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.all(BorderSide(
          color: colorScheme.primary,
        )),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        )),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(colorScheme.primary),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        )),
        // overlayColor: MaterialStateProperty.all(Color(0xFF870510)),
      ),
    ),
    primaryTextTheme: primaryTextTheme,
    platform: Theme.of(context).platform,
  );
}

// Sizes References: https://api.flutter.dev/flutter/material/TextTheme-class.html
// Responsive Sizing: https://www.youtube.com/watch?v=LWteDQes4Kk&t=831s
const primaryTextTheme = TextTheme(
  headline2: TextStyle(
    fontFamily: "Quantico",
    letterSpacing: 0.75,
    height: 1.2,
    fontSize: 50.0,
    fontWeight: FontWeight.w700,
    color: primaryAppcolor,
  ),
  headline3: TextStyle(
    fontFamily: "Quantico",
    height: 1.2,
    fontSize: 40.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),
  headline4: TextStyle(
    fontFamily: "Quantico",
    height: 1.2,
    fontSize: 28.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  ),
  button: TextStyle(
    letterSpacing: 3,
    color: Colors.white,
    fontSize: 13.0,
    fontWeight: FontWeight.w600,
  ),
);
