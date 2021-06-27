import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/login/login_view.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/register/register_view.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/start_up/startup_view.dart';
import 'package:flutter/material.dart';

class LandingPageBuilder extends StatelessWidget {
  const LandingPageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return RegisterView();
    return FutureBuilder(
      // Initialize FlutterFire:
      future: initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          // TODO - Create Error widget screen
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Something went wrong"),
              ],
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          // TODO - Create switch condition
          // check user auth if already authenticated before or not, use shareprefrencess to check previous user locally
          //  switch (authProvider.status) {
          //   case Uninitialized:
          //     return Loading();
          //   case Unauthenticated:
          //   case Authenticating:
          //     return SignInView();
          //   case Authenticated:
          //     return HomeVIew(); //screen for all list of events/activities....
          //   default:
          //     return StartUpVIew();
          // }

          return StartUpView(); // direct navigate here for now until further features
        }

        // Otherwise, show something is waiting for initialization to complete
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
        );
      },
    );
  }
}
