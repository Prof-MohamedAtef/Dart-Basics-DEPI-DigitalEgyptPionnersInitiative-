import '../entities/trip_entity.dart';
import '../repositories/trip_repository.dart';

class GetTripDetailsUseCase {
  final TripRepository repository;

  GetTripDetailsUseCase(this.repository);

  Future<TripEntity> call() {
    return repository.getTripDetails();
  }
}