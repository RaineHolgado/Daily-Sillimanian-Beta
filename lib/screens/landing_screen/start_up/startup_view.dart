import 'package:daily_sillimanian_beta/common/app_logo.dart';
import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
import 'package:daily_sillimanian_beta/common/auth_outlinedbutton.dart';
import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:daily_sillimanian_beta/helpers/dsb_theme.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/app/router.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Text("WELCOME TO",
                      style: Theme.of(context).primaryTextTheme.bodyText1),
                  SizedBox(height: 25),
                  Container(
                    height: 320,
                    width: 250,
                    child: SvgPicture.asset(
                      "assets/images/dark-text-logo.svg",
                      alignment: Alignment.topCenter,
                    ),
                  )
                ],
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
                      label: "LOGIN",
                      onPressed: () {
                        context.router.push(LoginRoute());
                      },
                      labeltStyle: Theme.of(context)
                          .primaryTextTheme
                          .bodyText1!
                          .copyWith(color: colorPalleteBg),
                    ),
                    SizedBox(height: 15),
                    AuthElevatedButton(
                      label: "REGISTER",
                      style: ElevatedButtonTheme.of(context).style!.copyWith(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFEFF0F1)),
                            //0xFFE6E6E6
                          ),
                      labeltStyle: Theme.of(context)
                          .primaryTextTheme
                          .button!
                          .copyWith(color: colorScheme.primary),
                      onPressed: () {
                        context.router.push(RegisterRoute());
                      },
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 280,
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          context.router.push(TabNavigationBuilderRoute());
                        },
                        child: Text("LOGIN ANONYMOUSLY",
                            style: Theme.of(context).primaryTextTheme.overline),
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
