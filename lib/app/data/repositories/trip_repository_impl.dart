import '../../domain/entities/trip_entity.dart';
import '../../domain/repositories/trip_repository.dart';

class TripRepositoryImpl implements TripRepository {
  @override
  Future<TripEntity> getTripDetails() async {
    // Example: Fetch data from a remote API
    return TripEntity(
      fromLat: 30.06560,
      fromLong: 31.54646,
      toLat: 30.06560,
      toLong: 31.54646,
      info: "Driver is far from the passenger around 22 mins",
    );
  }
}