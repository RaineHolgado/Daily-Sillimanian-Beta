// import 'package:daily_sillimanian_beta/helpers/constants.dart';
// import 'package:daily_sillimanian_beta/screens/landing_screen/start_up/startup_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class LandingPageBuilder extends ConsumerWidget {
//   const LandingPageBuilder({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return FutureBuilder(
//       future: initialization,
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return Scaffold(
//             body: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Something went wrong"),
//               ],
//             ),
//           );
//         }

//         if (snapshot.connectionState == ConnectionState.done) {
//           return StartUpView();
//         }

//         return Scaffold(
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircularProgressIndicator(),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
