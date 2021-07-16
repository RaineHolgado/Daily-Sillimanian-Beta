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

// class RegisterView extends StatefulWidget {
//   @override
//   _RegisterViewState createState() => _RegisterViewState();
// }

// class _RegisterViewState extends State<RegisterView> {
//   final TextEditingController _emailController =
//       TextEditingController(text: "a@a.com");

//   final TextEditingController _passwordController =
//       TextEditingController(text: "123456");

//   final TextEditingController _retypePasswordController =
//       TextEditingController();

//   bool _isValueCheck = false;

//   bool _agreed = false;

//   bool _errorAgreedTerms = false;

//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     print("Rebuild");

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
//                 // autovalidateMode: AutovalidateMode.onUserInteraction,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     InputTextFormField(
//                       label: "Email",
//                       controller: _emailController,
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
//                       controller: _passwordController,
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
//                       controller: _retypePasswordController,
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
//                       value: _isValueCheck,
//                       onChanged: (value) {
//                         setState(() {
//                           _isValueCheck = value!;
//                           _agreed = value;
//                           _errorAgreedTerms = !value;
//                         });
//                       },
//                     ),
//                     SizedBox(height: 5),
//                     _errorAgreedTerms
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
//                                   _agreed &&
//                                   _passwordController.text ==
//                                       _retypePasswordController.text) {
//                                 ref.read(userServiceProvider.notifier).register(
//                                       email: _emailController.text,
//                                       password: _passwordController.text,
//                                       context: context,
//                                     );
//                                 _emailController.clear();
//                                 _passwordController.clear();
//                                 _retypePasswordController.clear();
//                               } else {
//                                 if (!_agreed) {
//                                   setState(() {
//                                     _errorAgreedTerms = true;
//                                   });
//                                 }
//                               }
//                             },
//                             labeltStyle: Theme.of(context)
//                                 .primaryTextTheme
//                                 .bodyText1!
//                                 .copyWith(color: colorPalleteBg),
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
