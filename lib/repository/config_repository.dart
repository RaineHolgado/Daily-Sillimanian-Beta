import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

///  Unit Test reference
///  https://medium.com/@bruno.santos_/why-to-use-repository-pattern-in-your-application-flutter-549c0739a892
final configRepository =
    Provider<ConfigRepository>((ref) => IConfigRepository(ref));

abstract class ConfigRepository {
  Future<void> initSharedPref();
  Future<void> saveUser({required String email, required String password});
  Future<void> removeUser();
  Future<LocalUser?> getUser();
}

class IConfigRepository implements ConfigRepository {
  final ProviderRefBase ref;
  IConfigRepository(this.ref);
  late SharedPreferences _prefs;

  @override
  Future<void> initSharedPref() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Future<void> removeUser() async {
    await _prefs.remove("email");
    await _prefs.remove("password");
  }

  @override
  Future<void> saveUser({
    required String email,
    required String password,
  }) async {
    _prefs.setString("email", email);
    _prefs.setString("password", password);
  }

  @override
  Future<LocalUser?> getUser() async {
    String? _email = await _prefs.getString("email") ?? null;
    String? _password = await _prefs.getString("password") ?? null;

    if (_email == null && _password == null) return null;
    return LocalUser(email: _email, password: _password);
  }
}

class LocalUser {
  String? email;
  String? password;
  LocalUser({
    this.email,
    this.password,
  });
}
