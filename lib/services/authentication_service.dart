import 'package:daily_sillimanian_beta/services/firebaseFirestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authenticationServiceProvider =
    Provider((ref) => AuthenticationService(ref.read));

class AuthenticationService {
  AuthenticationService(this.read);

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final Reader read;

  late UserCredential _userCredential;

  Future<void> signInUser({
    required String email,
    required String password,
  }) async {
    try {
      _userCredential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      if (_userCredential.user != null) {
        // return TRUE login succesfully
      } else {
        throw ("Undefined Error: Firebase User null");
      }
    } on FirebaseAuthException catch (e) {
      print('FirebaseAuthException: ${e.code}');
      throw ("FirebaseAuthException: ${e.code}");
    } catch (e) {
      print(e);
      throw ("$e");
    }
  }

  Future<void> signUpUser({
    required String email,
    required String password,
  }) async {
    try {
      _userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      

    } on FirebaseAuthException catch (e) {
      print('FirebaseAuthException: ${e.code}');
      throw ("FirebaseAuthException: ${e.code}");
    } catch (e) {
      print(e);
      throw ("$e");
    }
  }
}
