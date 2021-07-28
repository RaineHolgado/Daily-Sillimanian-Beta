import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/app/router.gr.dart';
import 'package:daily_sillimanian_beta/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final userStateProvider = StateProvider<UserState>((ref) {
//   return UserState(ref);
// });

final authStateControllerProvider = ChangeNotifierProvider<AuthStateController>((ref) {
  ref.onDispose(() {});
  return AuthStateController(ref);
});

class AuthStateController extends ChangeNotifier {
  AuthStateController(
    this.ref, [
    this.isCheck = false,
    this.errorAgreed = false,
  ]);

  final ProviderRefBase ref;

  final TextEditingController emailController =
      TextEditingController(text: "a@a.com");
  final TextEditingController passwordController =
      TextEditingController(text: "123456");
  final TextEditingController retypePasswordController =
      TextEditingController(text: "123456");

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isCheck;
  bool errorAgreed;

  void icCheckBool(bool val) {
    isCheck = val;
    errorAgreed = !val;
    notifyListeners();
  }

  void submitFormRegister(BuildContext context) async {
    if (formKey.currentState!.validate() &&
        passwordController.text == retypePasswordController.text &&
        isCheck) {
      try {
        ref.read(userServiceProvider.notifier).register(
              email: emailController.text.trim(),
              password: passwordController.text.trim(),
            );
        context.router.push(TabNavigationBuilderRoute());
        clear();
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Opss"),
                content: Text(e.toString()),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            });
      }
    } else {
      if (!isCheck) {
        errorAgreed = true;
      }
    }
    notifyListeners();
  }

  void submitFormLogin(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      try {
        await ref.read(userServiceProvider.notifier).login(
              email: emailController.text.trim(),
              password: passwordController.text.trim(),
            );
        context.router.push(TabNavigationBuilderRoute());
        clear();
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Opss"),
                content: Text(e.toString()),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            });
      }
    } else {
      if (!isCheck) {
        errorAgreed = true;
      }
    }
    notifyListeners();
  }

  void clear() {
    emailController.clear();
    passwordController.clear();
    retypePasswordController.clear();
    isCheck = false;
    errorAgreed = false;
  }
}
