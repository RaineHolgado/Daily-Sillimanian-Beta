import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_sillimanian_beta/models/models.dart';
import 'package:daily_sillimanian_beta/services/firebaseFirestore_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final organizationRepositoryProvider =
    Provider<OrnazationRepository>((ref) => IOrganizationRepository(ref));

abstract class OrnazationRepository {
  Future<List<Organization>> retrieveAllOrgs();
  Future<void> createOrganization();
}

class IOrganizationRepository implements OrnazationRepository {
  IOrganizationRepository(this.ref);
  final ProviderRefBase ref;

  @override
  Future<List<Organization>> retrieveAllOrgs() async {
    try {
      QuerySnapshot<Map<String, dynamic>> _query = await ref
          .read(firebaseFirestoreServiceProvider)
          .organizationsColRef
          .get();

      if (_query.docs.isNotEmpty) {
        return _query.docs
            .map((result) => Organization.fromMap(result.data()))
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createOrganization() async {
    try {
      DocumentReference<Map<String, dynamic>> _docRef =
          ref.read(firebaseFirestoreServiceProvider).organizationsColRef.doc();
      await _docRef.set({
        "id": _docRef.id,
        "created_at": FieldValue.serverTimestamp(),
      });
    } catch (e) {
      rethrow;
    }
  }
}
