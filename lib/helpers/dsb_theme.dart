import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:flutter/material.dart';

// MAIN HANDLER COLOR THEMING
const ColorScheme colorScheme = ColorScheme(
  primary: Color(0xFFBB1017),
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
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.all(BorderSide(
          color: secondaryAppcolor,
        )),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        )),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFBB1017)),
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

// https://api.flutter.dev/flutter/material/TextTheme-class.html
const primaryTextTheme = TextTheme(
  headline2: TextStyle(
    fontFamily: "Quantico",
    letterSpacing: 0.75,
    height: 1.2,
    fontSize: 50.0,
    fontWeight: FontWeight.w700,
    color: Color(0xFFBB1017),
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
    color: Colors.white,
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
  ),
);
