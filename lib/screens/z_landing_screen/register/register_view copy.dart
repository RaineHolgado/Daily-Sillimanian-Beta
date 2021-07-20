// import 'package:daily_sillimanian_beta/common/auth_checkbox.dart';
// import 'package:daily_sillimanian_beta/helpers/constants.dart';
// import 'package:daily_sillimanian_beta/screens/landing_screen/user_state.dart';
// import 'package:daily_sillimanian_beta/services/user_service.dart';
// import 'package:flutter/material.dart';
// import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
// import 'package:daily_sillimanian_beta/common/auth_header.dart';
// import 'package:daily_sillimanian_beta/common/auth_textformfield.dart';
// import 'package:daily_sillimanian_beta/common/dsb_scaffold.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class RegisterView extends ConsumerWidget {
//   // final TextEditingController _emailController =
//   //     TextEditingController(text: "a@a.com");
//   // final TextEditingController _passwordController =
//   //     TextEditingController(text: "123456");
//   // final TextEditingController _retypePasswordController =
//   //     TextEditingController();
//   // final bool _agreed = false;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     print("Rebuild");
//     final userAuthState = ref.read(userStateProvider).state;
//     final _formKey = GlobalKey<FormState>();

//     return DsbScaffold(
//       appBarTitle: "REGISTER",
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsetsDirectional.only(top: 30),
//           width: double.infinity,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               AuthHeader(
//                 text: "CREATE",
//                 childrenText1: " AN",
//                 childrenText2: " ACCOUNT",
//               ),
//               SizedBox(height: 55),
//               Form(
//                 key: _formKey,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     InputTextFormField(
//                       label: "Email",
//                       controller: userAuthState.emailController,
//                       hintText: "Email",
//                       onFieldSubmitted: (_) {},
//                       validator: (val) {
//                         if (val == null || val.isEmpty) {
//                           return "Email must not be empty.";
//                         }
//                       },
//                     ),
//                     SizedBox(height: 15),
//                     InputTextFormField(
//                       label: "Password",
//                       controller: userAuthState.passwordController,
//                       hintText: "Password",
//                       password: true,
//                       onFieldSubmitted: (_) {},
//                       validator: (val) {
//                         if (val == null || val.isEmpty) {
//                           return "Password must not be empty.";
//                         }
//                       },
//                     ),
//                     SizedBox(height: 15),
//                     InputTextFormField(
//                       label: "Re-type Password",
//                       controller: userAuthState.retypePasswordController,
//                       hintText: "Re-type Password",
//                       password: true,
//                       onFieldSubmitted: (_) {},
//                       validator: (val) {
//                         if (val == null || val.isEmpty) {
//                           return "Re-type Password must not be empty.";
//                         }
//                       },
//                     ),
//                     SizedBox(height: 12),
//                     AuthCheckBox(
//                       value: userAuthState.agreedTerms,
//                       onChanged: (val) {
//                         ref.read(userStateProvider).state.agreedTerms = val!;
//                       },
//                     ),
//                     SizedBox(height: 5),
//                     userAuthState.agreedStringError.isNotEmpty
//                         ? Center(
//                             child: Text(
//                               "Please Check Terms of Use and Privacy Policy",
//                               style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: "Courier Prime",
//                                 fontWeight: FontWeight.normal,
//                                 color: Colors.red,
//                               ),
//                             ),
//                           )
//                         : SizedBox(),
//                     SizedBox(height: 40),
//                     Consumer(builder: (context, ref, _) {
//                       ref.listen(
//                         userExceptionProvider,
//                         (StateController<Object?> exceptionState) {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               content: Text(
//                                 exceptionState.state!.toString(),
//                               ),
//                             ),
//                           );
//                         },
//                       );
//                       final userState = ref.watch(userServiceProvider);
//                       return userState.maybeWhen(
//                         data: (_) {
//                           return AuthElevatedButton(
//                             label: "CREATE ACCOUNT",
//                             onPressed: () {
//                               if (_formKey.currentState!.validate() &&
//                                   userAuthState.agreedTerms) {
//                                 print(
//                                     "Email: ${userAuthState.emailController.text}");
//                                 print(
//                                     "Password: ${userAuthState.passwordController.text}");
//                                 print(
//                                     "Re-type Password: ${userAuthState.retypePasswordController.text}");
//                                 // ref.read(userServiceProvider.notifier).register(
//                                 //       email: userAuthState.emailController.text,
//                                 //       password:
//                                 //           userAuthState.passwordController.text,
//                                 //       context: context,
//                                 //     );
//                               } else {
//                                 print("Not valid");
//                                 ref
//                                     .read(userStateProvider)
//                                     .state
//                                     .agreedBool(true);
//                               }
//                             },
//                             labeltStyle: Theme.of(context)
//                                 .primaryTextTheme
//                                 .bodyText1!
//                                 .copyWith(color: whiteAppcolor),
//                           );
//                         },
//                         orElse: () => Center(
//                           child: CircularProgressIndicator(),
//                         ),
//                       );
//                     }),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
