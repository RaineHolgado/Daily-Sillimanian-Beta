import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/common/auth_checkbox.dart';
import 'package:flutter/material.dart';

import 'package:daily_sillimanian_beta/app/router.gr.dart';
import 'package:daily_sillimanian_beta/common/app_logo.dart';
import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
import 'package:daily_sillimanian_beta/common/auth_header.dart';
import 'package:daily_sillimanian_beta/common/auth_textformfield.dart';
import 'package:daily_sillimanian_beta/common/auth_underlinebutton.dart';
import 'package:daily_sillimanian_beta/common/dsb_scaffold.dart';

class RegisterView extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _retypePasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final bool _agreed = false;

  @override
  Widget build(BuildContext context) {
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
                    InputTextFormField(
                      label: "Re-type Password",
                      controller: _retypePasswordController,
                      hintText: "Re-type Password",
                      password: true,
                      onFieldSubmitted: (_) {},
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Re-type Password must not be empty.";
                        }
                      },
                    ),
                    SizedBox(height: 12),
                    AuthCheckBox(
                      value: _agreed,
                      onChanged: (val){
                        print("CheckBox val: $val");
                      },
                    ),
                    SizedBox(height: 40),
                    AuthElevatedButton(
                      label: "CREATE ACCOUNT",
                      onPressed: () {
                        context.router.navigate(TabNavigationBuilderRoute());
                      },
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

