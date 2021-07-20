// import 'package:daily_sillimanian_beta/helpers/constants.dart';
// import 'package:flutter/material.dart';

// // MAIN HANDLER COLOR THEMING
// final ColorScheme colorScheme = ColorScheme(
//   primary: blackAppColor,
//   //No color yet, must be lighter than primary color
//   primaryVariant: greyAppColor,
//   secondary: primaryAppColor,
//   secondaryVariant: Colors.transparent,
//   surface: Colors.transparent,
//   background: whiteAppcolor,
//   error: Colors.red,
//   onPrimary: whiteAppcolor,
//   onSecondary: whiteAppcolor,
//   onSurface: Colors.transparent,
//   onBackground: blackAppColor,
//   onError: whiteAppcolor,
//   brightness: Brightness.light,
// );

// class CustomTheme {
//   final BuildContext context;
//   CustomTheme(this.context);
//   ThemeData get lightTheme {
//     return ThemeData(
//       fontFamily: 'Montserrat',
//       colorScheme: colorScheme,
//       primaryColor: colorScheme.secondary,
//       scaffoldBackgroundColor: colorScheme.background,

//       //FLOATING ACTION BUTTON THEME
//       floatingActionButtonTheme: FloatingActionButtonThemeData(),

//       textSelectionTheme:
//           TextSelectionThemeData(cursorColor: colorScheme.primary),

//       //APPBAR THEME
//       appBarTheme: AppBarTheme(
//           centerTitle: true,
//           elevation: 0,
//           backgroundColor: Colors.white,
//           iconTheme: IconThemeData(
//             color: greyAppColor,
//             size: 20,
//           ),
//           titleTextStyle: TextStyle(
//             fontFamily: 'Montserrat',
//             letterSpacing: 1,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: blackAppColor,
//           )),

//       //INPUT TEXTFIELD THEME
//       inputDecorationTheme: InputDecorationTheme(
//         border: InputBorder.none,
//         hintStyle: primaryFont.bodyText1!.copyWith(color: greyAppColor),
//         errorStyle: primaryFont.overline!.copyWith(color: colorScheme.error),
//         labelStyle: primaryFont.overline,
//         errorBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: colorScheme.error),
//           borderRadius: BorderRadius.circular(5.0),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: colorScheme.error),
//           borderRadius: BorderRadius.circular(5.0),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: colorScheme.error),
//           borderRadius: BorderRadius.circular(5.0),
//         ),
//       ),

//       //BOTTOM NAVIGATION BAR THEME
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         selectedIconTheme: IconThemeData(size: 25),
//         unselectedIconTheme: IconThemeData(size: 25),
//         selectedLabelStyle: primaryFont.overline!.copyWith(
//           color: primaryAppColor,
//           fontSize: 10,
//         ),
//         unselectedLabelStyle: primaryFont.overline!.copyWith(
//           color: primaryAppColor,
//           fontSize: 10,
//         ),
//       ),

//       //BUTTON OUTLINE THEME
//       outlinedButtonTheme: OutlinedButtonThemeData(
//         style: ButtonStyle(
//           textStyle: MaterialStateProperty.all(primaryFont.bodyText1),
//           side: MaterialStateProperty.all(BorderSide(
//             color: colorScheme.secondary,
//           )),
//           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(5.0),
//           )),
//         ),
//       ),

//       //BUTTON ELEVATE THEME
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all(colorScheme.secondary),
//             shape: MaterialStateProperty.all(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(5.0),
//               ),
//             ),
//             shadowColor: MaterialStateProperty.all(Colors.transparent)),
//       ),

//       primaryTextTheme: primaryFont,
//       textTheme: primaryFont,
//       platform: Theme.of(context).platform,
//     );
//   }
// }

// // Fonts
// const TextTheme primaryFont = TextTheme(
//   headline1: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 50,
//     fontWeight: FontWeight.normal,
//     color: blackAppColor,
//   ),
//   headline2: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 45,
//     fontWeight: FontWeight.normal,
//     color: blackAppColor,
//   ),
//   headline3: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 40,
//     fontWeight: FontWeight.normal,
//     color: blackAppColor,
//   ),
//   headline4: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 35,
//     fontWeight: FontWeight.normal,
//     color: blackAppColor,
//   ),
//   headline5: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 30,
//     fontWeight: FontWeight.bold,
//     color: blackAppColor,
//   ),
//   headline6: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 25,
//     fontWeight: FontWeight.normal,
//     color: blackAppColor,
//   ),
//   //Subtitles and Captions
//   subtitle1: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 20,
//     fontWeight: FontWeight.normal,
//     color: blackAppColor,
//   ),
//   subtitle2: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 20,
//     fontWeight: FontWeight.bold,
//     color: blackAppColor,
//   ),
//   caption: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 20,
//     fontWeight: FontWeight.normal,
//     color: greyAppColor,
//   ),
//   overline: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 13,
//     fontWeight: FontWeight.normal,
//     color: blackAppColor,
//   ),
//   //Normal Texts
//   bodyText1: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 15,
//     fontWeight: FontWeight.normal,
//     color: blackAppColor,
//   ),
//   bodyText2: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 15,
//     fontWeight: FontWeight.bold,
//     color: blackAppColor,
//   ),
//   //Button Text
//   button: TextStyle(
//     fontFamily: 'Montserrat',
//     letterSpacing: 1,
//     fontSize: 15,
//     fontWeight: FontWeight.normal,
//     color: blackAppColor,
//   ),
// );



// //import 'package:daily_sillimanian_beta/helpers/constants.dart';
// // import 'package:flutter/material.dart';

// // // MAIN HANDLER COLOR THEMING
// // const ColorScheme colorScheme = ColorScheme(
// //   primary: primaryAppcolor,
// //   primaryVariant:
// //       Colors.transparent, //No color yet, must be lighter than primary color
// //   secondary: secondaryAppcolor,
// //   secondaryVariant: Colors.transparent,
// //   surface: Colors.transparent,
// //   background: Colors.white,
// //   error: Colors.red,
// //   onPrimary: secondaryAppcolor,
// //   onSecondary: Colors.white,
// //   onSurface: Colors.black,
// //   onBackground: Colors.black,
// //   onError: Colors.orange,
// //   brightness: Brightness.light,
// // );

// // ThemeData AppTheme(BuildContext context) {
// //   return ThemeData(
// //     fontFamily: "Montserrat",
// //     colorScheme: colorScheme,
// //     primaryColor: colorScheme.primary,
// //     scaffoldBackgroundColor: colorScheme.background,
// //     textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
// //     appBarTheme: AppBarTheme(
// //       centerTitle: true,
// //       elevation: 0,
// //       backgroundColor: Colors.white,
// //       iconTheme: IconThemeData(
// //         color: Colors.black,
// //         size: 20,
// //       ),
// //       titleTextStyle: TextStyle(
// //         color: Colors.black,
// //         fontSize: 18,
// //         fontWeight: FontWeight.w500,
// //       ),
// //     ),
// //     inputDecorationTheme: InputDecorationTheme(
// //       hintStyle: TextStyle(
// //         fontSize: 16,
// //         color: Colors.black45,
// //       ),
// //       border: InputBorder.none,
// //     ),
// //     outlinedButtonTheme: OutlinedButtonThemeData(
// //       style: ButtonStyle(
// //         side: MaterialStateProperty.all(BorderSide(
// //           color: colorScheme.primary,
// //         )),
// //         shape: MaterialStateProperty.all(RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(5.0),
// //         )),
// //       ),
// //     ),
// //     elevatedButtonTheme: ElevatedButtonThemeData(
// //       style: ButtonStyle(
// //         backgroundColor: MaterialStateProperty.all(colorScheme.primary),
// //         shape: MaterialStateProperty.all(RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(5.0),
// //         )),
// //         // overlayColor: MaterialStateProperty.all(Color(0xFF870510)),
// //       ),
// //     ),
// //     primaryTextTheme: primaryTextTheme,
// //     platform: Theme.of(context).platform,
// //   );
// // }

// // // Sizes References: https://api.flutter.dev/flutter/material/TextTheme-class.html
// // // Responsive Sizing: https://www.youtube.com/watch?v=LWteDQes4Kk&t=831s
// // const primaryTextTheme = TextTheme(
// //   headline2: TextStyle(
// //     fontFamily: "Quantico",
// //     letterSpacing: 0.75,
// //     height: 1.2,
// //     fontSize: 50.0,
// //     fontWeight: FontWeight.w700,
// //     color: primaryAppcolor,
// //   ),
// //   headline3: TextStyle(
// //     fontFamily: "Quantico",
// //     height: 1.2,
// //     fontSize: 40.0,
// //     fontWeight: FontWeight.w700,
// //     color: Colors.black,
// //   ),
// //   headline4: TextStyle(
// //     fontFamily: "Quantico",
// //     height: 1.2,
// //     fontSize: 28.0,
// //     fontWeight: FontWeight.w700,
// //     color: Colors.white,
// //   ),
// //   button: TextStyle(
// //     letterSpacing: 3,
// //     color: Colors.white,
// //     fontSize: 13.0,
// //     fontWeight: FontWeight.w600,
// //   ),
// // );