// import 'package:auto_route/auto_route.dart';
// import 'package:daily_sillimanian_beta/app/router.gr.dart';
// import 'package:daily_sillimanian_beta/helpers/constants.dart';
// import 'package:daily_sillimanian_beta/repository/config_repository.dart';
// import 'package:daily_sillimanian_beta/services/user_service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class LandingPageBuilder extends ConsumerWidget {
//   const LandingPageBuilder({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final _init = ref.watch(localProvider);
//     return FutureBuilder(
//       // future: getInit(ref, context),
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return Scaffold(
//             body: Center(child: Text("Something went wrong")),
//           );
//         }

//         // if (snapshot.connectionState == ConnectionState.done) {}

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

//   Future<void> getInit(WidgetRef ref, BuildContext context) async {
//     await initialization;
//     LocalUser? _user = await ref.watch(configRepository).getUser();
//     if (_user != null) {
//       ref.read(userServiceProvider.notifier).login(
//             email: _user.email!,
//             password: _user.password!,
//             context: context,
//           );
//     } else {
//       context.router.push(StartUpRoute());
//     }
//   }
// }


// // final localProvider = FutureProvider<LocalUser?>((ref) async {
// //   return await ref.watch(configRepository).getUser();
// // });
