import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:daily_sillimanian_beta/common/auth_checkbox.dart';
import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
import 'package:daily_sillimanian_beta/common/auth_header.dart';
import 'package:daily_sillimanian_beta/common/auth_textformfield.dart';
import 'package:daily_sillimanian_beta/common/dsb_scaffold.dart';
import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/user_state.dart';
import 'package:daily_sillimanian_beta/services/user_service.dart';

class RegisterView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("Rebuild");
    final userAuthState = ref.watch(userStateProvider);
    final state =
        ref.watch(userStateProvider.select((value) => value.errorAgreed));

    return DsbScaffold(
      appBarTitle: "REGISTER",
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.only(top: 30),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AuthHeader(
                text: "CREATE",
                childrenText1: " AN",
                childrenText2: " ACCOUNT",
              ),
              SizedBox(height: 55),
              Form(
                key: userAuthState.formKey,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InputTextFormField(
                      label: "Email",
                      controller: userAuthState.emailController,
                      hintText: "Email",
                      onFieldSubmitted: (_) {},
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Email must not be empty.";
                        }
                      },
                    ),
                    SizedBox(height: 15),
                    InputTextFormField(
                      label: "Password",
                      controller: userAuthState.passwordController,
                      hintText: "Password",
                      password: true,
                      onFieldSubmitted: (_) {},
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Password must not be empty.";
                        }
                      },
                    ),
                    SizedBox(height: 15),
                    InputTextFormField(
                      label: "Re-type Password",
                      controller: userAuthState.retypePasswordController,
                      hintText: "Re-type Password",
                      password: true,
                      onFieldSubmitted: (_) {},
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Re-type Password must not be empty.";
                        } else if (val !=
                            userAuthState.passwordController.text) {
                          return "Password does not match";
                        }
                      },
                    ),
                    SizedBox(height: 12),
                    AuthCheckBox(
                      value: userAuthState.isCheck,
                      onChanged: (val) {
                        ref.read(userStateProvider).icCheckBool(val!);
                      },
                    ),
                    SizedBox(height: 5),
                    state
                        ? Center(
                            child: Text(
                              "Please Check Terms of Use and Privacy Policy",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Courier Prime",
                                fontWeight: FontWeight.normal,
                                color: Colors.red,
                              ),
                            ),
                          )
                        : SizedBox(),
                    SizedBox(height: 40),
                    Consumer(builder: (context, ref, _) {
                      // ref.listen(
                      //   userExceptionProvider,
                      //   (StateController<Object?> exceptionState) {
                      //     ScaffoldMessenger.of(context).showSnackBar(
                      //       SnackBar(
                      //         content: Text(
                      //           exceptionState.state!.toString(),
                      //         ),
                      //       ),
                      //     );
                      //   },
                      // );
                      final userState = ref.watch(userServiceProvider);
                      return userState.maybeWhen(
                        data: (_) {
                          return AuthElevatedButton(
                            label: "CREATE ACCOUNT",
                            onPressed: () {
                              userAuthState.submitFormRegister(context);
                            },
                            labeltStyle: Theme.of(context)
                                .primaryTextTheme
                                .bodyText1!
                                .copyWith(color: colorPalleteBg),
                          );
                        },
                        orElse: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
