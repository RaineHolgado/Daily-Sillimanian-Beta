import 'package:daily_sillimanian_beta/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final userStateProvider = StateProvider<UserState>((ref) {
//   return UserState(ref);
// });

final userStateProvider = ChangeNotifierProvider<UserState>((ref) {
  ref.onDispose(() {});
  return UserState(ref);
});

class UserState extends ChangeNotifier {
  UserState(
    this.ref, [
    this.isCheck = false,
    this.errorAgreed = false,
  ]);

  final ProviderRefBase ref;

  final TextEditingController emailController =
      TextEditingController(text: "a");
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
      ref.read(userServiceProvider.notifier).register(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
            context: context,
          );
      // emailController.clear();
      // passwordController.clear();
      // retypePasswordController.clear();
    } else {
      if (!isCheck) {
        print("isCheck .....");
        errorAgreed = true;
      }
    }
    notifyListeners();
  }

  void submitFormLogin(BuildContext context) {
    if (formKey.currentState!.validate()) {
      ref.read(userServiceProvider.notifier).login(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
            context: context,
          );
      // emailController.clear();
      // passwordController.clear();
      // retypePasswordController.clear();
    } else {
      if (!isCheck) {
        print("isCheck .....");
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
