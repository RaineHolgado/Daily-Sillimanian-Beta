

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseFirestoreServiceProvider = Provider((ref) => FirebaseFirestoreService());

class FirebaseFirestoreService {
  FirebaseFirestore firebaseFiretore = FirebaseFirestore.instance;

  late final CollectionReference<Map<String, dynamic>> userColRef = firebaseFiretore.collection("Users");
}