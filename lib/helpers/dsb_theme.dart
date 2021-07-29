import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// MAIN HANDLER COLOR THEMING
final ColorScheme colorScheme = ColorScheme(
  primary: primaryAppColor,
  primaryVariant: onPrimaryAppColor,
  secondary: primaryAppColor,
  secondaryVariant: Colors.transparent,
  surface: Colors.transparent,
  background: whiteAppcolor,
  error: Colors.red,
  onPrimary: onPrimaryAppColor,
  onSecondary: whiteAppcolor,
  onSurface: Colors.transparent,
  onBackground: Colors.transparent,
  onError: Colors.orange,
  brightness: Brightness.light,
);

class DailySillimanTheme {
  final BuildContext context;
  DailySillimanTheme(this.context);
  
  ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Montserrat',
      colorScheme: colorScheme,
      primaryColor: colorScheme.secondary,
      scaffoldBackgroundColor: colorScheme.background,

      textSelectionTheme:
          TextSelectionThemeData(cursorColor: colorScheme.primary),

      //APPBAR THEME
      appBarTheme: AppBarTheme(
        // systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: blackAppColor,
          size: 20,
        ),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: blackAppColor,
          letterSpacing: 0.05
        ),
      ),

      //INPUT TEXTFIELD THEME
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        labelStyle: primaryFont.overline,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.error),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.error),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: blackAppColor),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),

      //BOTTOM NAVIGATION BAR THEME
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(
          size: 25,
          color: primaryAppColor,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 25,
          color: const Color(0xFF555555),
        ),
        selectedLabelStyle: const TextStyle(
          color: primaryAppColor,
          fontSize: 10,
        ),
        unselectedLabelStyle: const TextStyle(
          color: const Color(0xFF555555),
          fontSize: 10,
        ),
      ),

      //BUTTON OUTLINE THEME
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(primaryFont.bodyText1),
          side: MaterialStateProperty.all(BorderSide(
            color: colorScheme.secondary,
          )),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          )),
        ),
      ),

      //BUTTON ELEVATE THEME
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colorScheme.secondary),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            shadowColor: MaterialStateProperty.all(Colors.transparent)),
      ),

      primaryTextTheme: primaryFont,
      textTheme: primaryFont,
      platform: Theme.of(context).platform,
    );
  }
}

// // Sizes References: https://api.flutter.dev/flutter/material/TextTheme-class.html
// // Responsive Sizing: https://www.youtube.com/watch?v=LWteDQes4Kk&t=831s
// Fonts
const TextTheme primaryFont = TextTheme(
  // headline1: TextStyle(
  //   letterSpacing: 1,
  //   fontSize: 50,
  //   fontWeight: FontWeight.normal,
  //   color: blackAppColor,
  // ),
  // headline2: TextStyle(
  //   letterSpacing: 1,
  //   fontSize: 45,
  //   fontWeight: FontWeight.normal,
  //   color: blackAppColor,
  // ),
  // headline3: TextStyle(
  //   letterSpacing: 1,
  //   fontSize: 40,
  //   fontWeight: FontWeight.normal,
  //   color: blackAppColor,
  // ),
  // headline4: TextStyle(
  //   letterSpacing: 1,
  //   fontSize: 35,
  //   fontWeight: FontWeight.normal,
  //   color: blackAppColor,
  // ),
  headline5: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w400,
    color: blackAppColor,
  ),
  // headline6: TextStyle(
  //   letterSpacing: 1,
  //   fontSize: 20,
  //   fontWeight: FontWeight.normal,
  //   color: blackAppColor,
  // ),
  //Subtitles and Captions
  // subtitle1: TextStyle(
  //   letterSpacing: 1,
  //   fontSize: 16,
  //   fontWeight: FontWeight.normal,
  //   color: blackAppColor,
  // ),
  subtitle2: TextStyle(
    letterSpacing: 1,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: blackAppColor,
  ),
  caption: TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: greyAppColor,
  ),
  overline: TextStyle(
    letterSpacing: 1,
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: blackAppColor,
  ),
  bodyText1: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: blackAppColor,
  ),
  bodyText2: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: blackAppColor,
  ),
  button: TextStyle(
    letterSpacing: 1,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: blackAppColor,
  ),
);
