import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_sillimanian_beta/models/user_model.dart';
import 'package:daily_sillimanian_beta/services/firebaseFirestore_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider =
    Provider<UserRepository>((ref) => IUserRepository(ref));

abstract class UserRepository {
  Future<UserModel> create({required UserModel userModel});
  Future<UserModel> get({required String uid});
}

class IUserRepository implements UserRepository {
  IUserRepository(this.ref);
  final ProviderRefBase ref;

  @override
  Future<UserModel> create({required UserModel userModel}) async {
    try {
      DocumentReference<Map<String, dynamic>> _docRef = await ref
          .read(firebaseFirestoreServiceProvider)
          .usersColRef
          .doc(userModel.id);
      _docRef.set(userModel.toMap());
      return userModel;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> get({required String uid}) async {
    try {
      return await ref
          .read(firebaseFirestoreServiceProvider)
          .usersColRef
          .doc(uid)
          .get()
          .then((value) => UserModel.fromMap(value.data()));
    } catch (e) {
      rethrow;
    }
  }
}
