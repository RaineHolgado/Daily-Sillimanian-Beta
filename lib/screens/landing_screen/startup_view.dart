import 'package:daily_sillimanian_beta/common/auth_elevatedbutton.dart';
import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:daily_sillimanian_beta/helpers/dsb_theme.dart';
import 'package:daily_sillimanian_beta/repository/config_repository.dart';
import 'package:daily_sillimanian_beta/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/app/router.gr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartUpView extends ConsumerStatefulWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  _StartUpViewState createState() => _StartUpViewState();
}

class _StartUpViewState extends ConsumerState<StartUpView> {
  @override
  void initState() {
    checkUserLogin();
    super.initState();
  }

  void checkUserLogin() async {
    await ref.read(configRepository).initSharedPref();
    final _user = await ref.read(configRepository).getUser();
    if (_user != null) {
      await ref.read(userServiceProvider.notifier).login(
            email: _user.email!,
            password: _user.password!,
          );
      context.router.push(TabNavigationBuilderRoute());
    }
  }

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
                  const SizedBox(height: 80),
                  Text("WELCOME TO",
                      style: Theme.of(context).primaryTextTheme.bodyText1),
                  const SizedBox(height: 25),
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
                      labelStyle: Theme.of(context)
                          .primaryTextTheme
                          .button!
                          .copyWith(color: whiteAppcolor),
                    ),
                    const SizedBox(height: 15),
                    AuthElevatedButton(
                      label: "REGISTER",
                      style: ElevatedButtonTheme.of(context).style!.copyWith(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFE6E6E6)),
                          ),
                      onPressed: () {
                        context.router.push(RegisterRoute());
                      },
                    ),
                    const SizedBox(height: 40),
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
                    const SizedBox(height: 80),
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
