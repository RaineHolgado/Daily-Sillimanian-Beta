// import 'package:auto_route/auto_route.dart';
// import 'package:daily_sillimanian_beta/app/router.gr.dart';
// import 'package:daily_sillimanian_beta/helpers/constants.dart';
// import 'package:flutter/material.dart';

// class LandingPageBuilder extends StatelessWidget {
//   const LandingPageBuilder({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: initialization,
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return Scaffold(
//             body: Center(child: Text("Something went wrong")),
//           );
//         }

//         if (snapshot.connectionState == ConnectionState.done) {
//           context.router.push(StartUpRoute());
//         }

//         return Scaffold(
//           body: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 CircularProgressIndicator(
//                   strokeWidth: 3,
//                   valueColor: AlwaysStoppedAnimation(
//                     Theme.of(context).primaryColor,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
