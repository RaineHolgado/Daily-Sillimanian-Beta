import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_sillimanian_beta/models/events_model.dart';
import 'package:daily_sillimanian_beta/services/firebaseFirestore_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final eventsRepositoryProvider = Provider((ref) => EventsRepository(ref.read));

class EventsRepository {
  EventsRepository(this.read);
  final Reader read;

  Future<List<Events>> getAllEvents() async {
    try {
      QuerySnapshot<Map<String, dynamic>> _query = await read(firebaseFirestoreServiceProvider).eventsColRef.get();

      if (_query.docs.isNotEmpty) {
        return _query.docs.map((result) => Events.fromMap(result.data())).toList();
      } else {
        return [];
      }
      
    } catch (e) {
      throw (e);
    }
  }

  Future<Events?> getEvent({required String eventId}) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> _docSnap = await read(firebaseFirestoreServiceProvider).eventsColRef.doc(eventId).get();
      
      if (_docSnap.exists) {
        return Events.fromMap(_docSnap.data());
      } else {
        return null;
      }
    } catch (e) {
      throw (e);
    }
  }

  Future<void> createEvents() async {
    try {
      DocumentReference<Map<String, dynamic>> _docRef =
          read(firebaseFirestoreServiceProvider).eventsColRef.doc();

      // TODO - Add more detail and used object model for less error
      await _docRef.set({
        "id": _docRef.id,
        "created_at": FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw (e);
    }
  }
}
