import 'package:daily_sillimanian_beta/common/app_logo.dart';
import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
import 'package:daily_sillimanian_beta/common/auth_textformfield.dart';
import 'package:daily_sillimanian_beta/common/auth_underlinebutton.dart';
import 'package:daily_sillimanian_beta/common/dsb_scaffold.dart';
import 'package:daily_sillimanian_beta/screens/sign_in/signin_view.dart';
import 'package:flutter/material.dart';

class SignUpview extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DsbScaffold(
      appBarTitle: "SIGN UP",
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: AppLogo(),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InputTextFormField(
                    label: "Username",
                    controller: _usernameController,
                    hintText: "Username",
                    onFieldSubmitted: (_) {},
                  ),
                  SizedBox(height: 15),
                  InputTextFormField(
                    label: "Password",
                    controller: _passwordController,
                    hintText: "Password",
                    password: true,
                    onFieldSubmitted: (_) {},
                  ),
                  SizedBox(height: 15),
                  InputTextFormField(
                    label: "Re-type Password",
                    controller: _passwordController,
                    hintText: "Re-type Password",
                    password: true,
                    onFieldSubmitted: (_) {},
                  ),
                  SizedBox(height: 45),
                  AuthElevatedButton(
                    label: "CREATE ACCOUNT",
                    onPressed: () {},
                  ),
                  SizedBox(height: 8),
                  AuthUnderLineButton(
                      label: "LOGIN",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInview()),
                        );
                      }),
                  SizedBox(height: 5),
                  Container(
                    width: 262,
                    alignment: Alignment.center,
                    child: Text(
                      "Creating account means agreeing to the terms and conditions",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xFF959595),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
