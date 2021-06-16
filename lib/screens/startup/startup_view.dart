import 'package:daily_sillimanian_beta/common/app_logo.dart';
import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
import 'package:daily_sillimanian_beta/common/auth_outlinedbutton.dart';
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
                height: 380,
                // padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(47, context)),
                width: double.infinity,
                child: AppLogo(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 300,
                // padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(47, context)),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AuthOutlinedButton(
                      label: "SIGN IN",
                      onPressed: () {},
                    ),
                    SizedBox(height: 15),
                    AuthOutlinedButton(
                      label: "ANONYMOUSLY SIGN IN",
                      onPressed: () {},
                    ),
                    SizedBox(height: 60),
                    AuthElevatedButton(
                      label: "SIGN UP",
                      onPressed: () {},
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
