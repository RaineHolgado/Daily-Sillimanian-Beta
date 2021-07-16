import 'package:daily_sillimanian_beta/repository/config_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authenticationServiceProvider =
    Provider((ref) => AuthenticationService(ref));

class AuthenticationService {
  AuthenticationService(this.ref);

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final ProviderRefBase ref;

  Future<String> signInUser({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential _userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      if (_userCredential.user != null) {
        ref.read(configRepository).saveUser(email: email, password: password);
        return _userCredential.user!.uid;
      } else {
        throw ("Undefined Error: Firebase User null");
      }
    } on FirebaseAuthException catch (e) {
      throw ("FirebaseAuthException: ${e.code}");
    } catch (e) {
      throw ("$e");
    }
  }

  Future<String> signUpUser({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential _userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      ref.read(configRepository).saveUser(email: email, password: password);

      return _userCredential.user!.uid;
    } on FirebaseAuthException catch (e) {
      // print('FirebaseAuthException: ${e.code}');
      throw ("FirebaseAuthException: ${e.code}");
    } catch (e) {
      // print(e);
      throw ("$e");
    }
  }

  Future<void> signOutUser() async {
    ref.read(configRepository).removeUser();
    await _firebaseAuth.signOut();
  }
}
