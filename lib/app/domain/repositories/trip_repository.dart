import '../entities/trip_entity.dart';

abstract class TripRepository {
  Future<TripEntity> getTripDetails();
}