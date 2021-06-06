import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_sillimanian_beta/models/user_model.dart';
import 'package:daily_sillimanian_beta/services/firebaseFirestore_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userServiceProvider = Provider((ref) => UserService(ref.read));

class UserService {
  UserService(this.read);

  final Reader read;

  UserModel? _userModel;
  UserModel? get userModel => _userModel;

  Future createUser({
    required String uid,
    required String email,
    required String name,
  }) async {
    try {
      await read(firebaseFirestoreServiceProvider).userColRef.doc(uid).set({});
    } catch (e) {
      throw (e);
    }
  }

  Future<UserModel> getUser({required String uid}) async {
    try {
      return await read(firebaseFirestoreServiceProvider)
          .userColRef
          .doc(uid)
          .get()
          .then((value) => UserModel.fromMap(value.data()));
    } catch (e) {
      throw (e);
    }
  }
}
