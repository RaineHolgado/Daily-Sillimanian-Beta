// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class AppLogo extends StatelessWidget {
//   const AppLogo({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     String rareURL = 'https://www.pornhub.com/';
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           width: 266,
//           child: Text(
//             "Daily",
//             style: Theme.of(context).primaryTextTheme.headline3,
//             textAlign: TextAlign.left,
//           ),
//         ),
//         Container(
//           width: 266,
//           child: Text(
//             "Sillimanian",
//             style: Theme.of(context).primaryTextTheme.headline2,
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           width: 266,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               GestureDetector(
//                 onTap: () async {
//                   await launch(
//                     rareURL,
//                     forceSafariVC: false,
//                     forceWebView: false,
//                     headers: <String, String>{
//                       'my_header_key': 'my_header_value'
//                     },
//                   );
//                 },
//                 child: Container(
//                   padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
//                   color: Colors.black,
//                   child: Text(
//                     "Beta",
//                     style: Theme.of(context).primaryTextTheme.headline4,
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
