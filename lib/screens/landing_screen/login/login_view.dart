import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/common/auth_header.dart';
import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:flutter/material.dart';

import 'package:daily_sillimanian_beta/app/router.gr.dart';
import 'package:daily_sillimanian_beta/common/app_logo.dart';
import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
import 'package:daily_sillimanian_beta/common/auth_textformfield.dart';
import 'package:daily_sillimanian_beta/common/auth_underlinebutton.dart';
import 'package:daily_sillimanian_beta/common/dsb_scaffold.dart';

class LoginView extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DsbScaffold(
      appBarTitle: "LOGIN",
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.only(top: 30),
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
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InputTextFormField(
                      label: "Email",
                      controller: _usernameController,
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
                      controller: _passwordController,
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
                    AuthElevatedButton(
                      label: "LOGIN",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.router.navigate(TabNavigationBuilderRoute());
                        }
                      },
                      labeltStyle: Theme.of(context)
                          .primaryTextTheme
                          .bodyText1!
                          .copyWith(color: colorPalleteBg),
                    ),
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
