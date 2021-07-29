

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseFirestoreServiceProvider = Provider((ref) => FirebaseFirestoreService());

class FirebaseFirestoreService {
  final FirebaseFirestore firebaseFiretore = FirebaseFirestore.instance;

  late final CollectionReference<Map<String, dynamic>> usersColRef = firebaseFiretore.collection("Users");
  late final CollectionReference<Map<String, dynamic>> eventsColRef = firebaseFiretore.collection("Events");
  late final CollectionReference<Map<String, dynamic>> organizationsColRef = firebaseFiretore.collection("Organizations");
}