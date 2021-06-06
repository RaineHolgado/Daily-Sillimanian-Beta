import 'package:daily_sillimanian_beta/services/firebaseFirestore_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authenticationServiceProvider = Provider((ref) => AuthenticationService(ref.read));

class AuthenticationService {

  AuthenticationService(this.read);

  final Reader read;



}