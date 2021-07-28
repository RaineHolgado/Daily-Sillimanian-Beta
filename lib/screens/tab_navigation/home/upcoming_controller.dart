import 'package:daily_sillimanian_beta/models/models.dart';
import 'package:daily_sillimanian_beta/repository/event_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final upcomingControllerProvider = FutureProvider<List<Events>>((ref) {
  return ref.read(eventRepository).retrieveAllEvents();
});