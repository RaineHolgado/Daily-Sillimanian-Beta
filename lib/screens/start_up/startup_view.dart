import 'package:daily_sillimanian_beta/common/app_logo.dart';
import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
import 'package:daily_sillimanian_beta/common/auth_outlinedbutton.dart';
import 'package:daily_sillimanian_beta/screens/sign_in/signin_view.dart';
import 'package:daily_sillimanian_beta/screens/sign_up/signup_view.dart';
import 'package:flutter/material.dart';

class StartUpview extends StatelessWidget {
  const StartUpview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 320,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                            "assets/images/daily_sillimanian_beta.png"))),
                // child: AppLogo(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AuthElevatedButton(
                      label: "SIGN IN",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInview()),
                        );
                      },
                    ),
                    SizedBox(height: 15),
                    AuthOutlinedButton(
                      label: "SIGN UP",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpview()),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 262,
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "SIGN IN ANONYMOUSLY",
                          style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 80),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
