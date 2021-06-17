import 'package:daily_sillimanian_beta/common/app_logo.dart';
import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
import 'package:daily_sillimanian_beta/common/auth_textformfield.dart';
import 'package:daily_sillimanian_beta/common/auth_underlinebutton.dart';
import 'package:daily_sillimanian_beta/common/dsb_scaffold.dart';
import 'package:daily_sillimanian_beta/screens/sign_up/signup_view.dart';
import 'package:flutter/material.dart';

class SignInview extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DsbScaffold(
      appBarTitle: "SIGN IN",
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
                  SizedBox(height: 10),
                  Container(
                    width: 262,
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "forgot password",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFBB1017),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  AuthElevatedButton(
                    label: "LOGIN",
                    onPressed: () {},
                  ),
                  SizedBox(height: 8),
                  AuthUnderLineButton(
                      label: "REGISTER",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpview()),
                        );
                      }),
                  SizedBox(height: 70),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
