import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/common/auth_header.dart';
import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/authState_controller.dart';
import 'package:daily_sillimanian_beta/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
import 'package:daily_sillimanian_beta/common/auth_textformfield.dart';
import 'package:daily_sillimanian_beta/common/dsb_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAuthState = ref.watch(userStateProvider);

    return DsbScaffold(
      appBarTitle: "LOGIN",
      body: SafeArea(
        child: Container(
          padding: const EdgeInsetsDirectional.only(top: 30),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AuthHeader(
                text: "LOGIN",
                childrenText1: " TO YOUR",
                childrenText2: " ACCOUNT",
              ),
              SizedBox(height: 55),
              Form(
                key: userAuthState.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
                    Container(
                      width: 280,
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "forgot password",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              // color: Color(0xFF870510),
                              color: Colors.blueAccent),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Consumer(builder: (context, ref, _) {
                      final userState = ref.watch(userServiceProvider);
                      return userState.maybeWhen(
                        data: (_) {
                          return AuthElevatedButton(
                            label: "LOGIN",
                            onPressed: () {
                              userAuthState.submitFormLogin(context);
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
