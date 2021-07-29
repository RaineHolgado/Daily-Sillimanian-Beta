import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_sillimanian_beta/models/event_model.dart';
import 'package:daily_sillimanian_beta/services/firebaseFirestore_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final eventRepository =
    Provider<EventRepository>((ref) => IEventRepository(ref));

abstract class EventRepository {
  Future<List<Events>> retrieveAllEvents();
  Future<Events?> getEvent({required String eventId});
  Future<void> createEvent();
}

class IEventRepository implements EventRepository {
  IEventRepository(this.ref);
  final ProviderRefBase ref;

  @override
  Future<List<Events>> retrieveAllEvents() async {
    try {
      QuerySnapshot<Map<String, dynamic>> _query =
          await ref.read(firebaseFirestoreServiceProvider).eventsColRef.get();

      if (_query.docs.isNotEmpty) {
        return _query.docs
            .map((result) => Events.fromMap(result.data()))
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Events?> getEvent({required String eventId}) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> _docSnap = await ref
          .read(firebaseFirestoreServiceProvider)
          .eventsColRef
          .doc(eventId)
          .get();

      if (_docSnap.exists) {
        return Events.fromMap(_docSnap.data());
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createEvent() async {
    try {
      DocumentReference<Map<String, dynamic>> _docRef =
          ref.read(firebaseFirestoreServiceProvider).eventsColRef.doc();
      await _docRef.set({
        "id": _docRef.id,
        "created_at": FieldValue.serverTimestamp(),
      });
    } catch (e) {
      rethrow;
    }
  }
}
