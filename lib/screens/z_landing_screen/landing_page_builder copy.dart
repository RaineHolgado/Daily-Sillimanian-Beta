// import 'package:daily_sillimanian_beta/helpers/constants.dart';
// import 'package:daily_sillimanian_beta/repository/config_repository.dart';
// import 'package:daily_sillimanian_beta/services/user_service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class LandingPageBuilder extends ConsumerWidget {
//   const LandingPageBuilder({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final initialize = ref.watch(initProvider);
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: initialize.when(data: (test) {
//           return Container();
//         }, loading: () {
//           return Center(
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
//           );
//         }, error: (err, st) {
//           return Center(
//             child: Text("Something went wrong"),
//           );
//         }),
//       ),
//     );
//   }
// }

// final initProvider = FutureProvider.autoDispose<LocalUser?>((ref) async {
//   await flutterFireInitialization;

//    var _user = await ref.read(configRepository).getUser();



//   if (_user != null) {
//     await ref.read(userServiceProvider.notifier).login(
//           email: _user.email!,
//           password: _user.password!,
//           context: context,
//         );
//   }
// });
