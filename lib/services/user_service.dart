import 'package:daily_sillimanian_beta/models/user_model.dart';
import 'package:daily_sillimanian_beta/repository/user_repository.dart';
import 'package:daily_sillimanian_beta/services/authentication_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userExceptionProvider = StateProvider<Object?>((ref) {
  return null;
});

final userServiceProvider =
    StateNotifierProvider<UserService, AsyncValue<UserModel?>>(
        (ref) => UserService(ref));

class UserService extends StateNotifier<AsyncValue<UserModel?>> {
  UserService(this.ref) : super(AsyncValue.data(null));

  final ProviderRefBase ref;

  Future<void> register({
    required String email,
    required String password,
  }) async {
    try {
      state = AsyncValue.loading();
      final uid = await ref.read(authenticationServiceProvider).signUpUser(
            email: email,
            password: password,
          );

      final user = await ref.read(userRepositoryProvider).create(
            userModel: UserModel(
              id: uid,
              name: email[0].toUpperCase(),
              email: email,
            ),
          );
      state = AsyncValue.data(user);
    } catch (e) {
      state = AsyncValue.data(null);
      throw e;
      // state = AsyncValue.error(e, st);
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      state = AsyncValue.loading();
      final uid = await ref.read(authenticationServiceProvider).signInUser(
            email: email,
            password: password,
          );
      final user = await ref.read(userRepositoryProvider).get(uid: uid);
      state = AsyncValue.data(user);
    } catch (e) {
      state = AsyncValue.data(null);
      throw e;
    }
  }

  Future<void> logOut() async {
    await ref.read(authenticationServiceProvider).signOutUser();
    state = AsyncValue.data(null);
  }

  // Future<void> testGetUser({required String uid}) async {
  //   try {
  //     await ref.read(userRepositoryProvider).get(uid: uid);
  //   } catch (e) {
  //     _handleException(e);
  //   }
  // }

  // void _handleException(Object e) {
  //   ref.read(userExceptionProvider).state = "$e";
  // }
}

// class UserException implements Exception {
//   const UserException(this.error);

//   final String error;

//   @override
//   String toString() {
//     return '''
//     User Error: $error
//     ''';
//   }
// }
