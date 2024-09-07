import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../domain/entities/trip_entity.dart';
import '../../domain/usecases/get_trip_details_usecase.dart';

class MapViewModel extends ChangeNotifier {
  late GoogleMapController _mapController; // Controller to interact with the map
  late final GetTripDetailsUseCase getTripDetailsUseCase;
  Set<Marker> _markers = {};

  Set<Marker> get markers => _markers;

  MapViewModel(this.getTripDetailsUseCase);

  Future<void> loadTripDetails() async {
    try {
      final tripDetails = await getTripDetailsUseCase.call();
      _setMarkers(tripDetails);
    }catch(e){
      print('Error loading trip details: $e');
    }
    notifyListeners(); // Notify the UI
  }

  void _setMarkers(TripEntity tripDetails) {
    _markers = {
      Marker(
        markerId: const MarkerId('fromMarker'),
        position: LatLng(tripDetails!.fromLat, tripDetails!.fromLong),
        infoWindow: InfoWindow(title: 'Driver', snippet: tripDetails!.info),
      ),
      Marker(
        markerId: const MarkerId('toMarker'),
        position: LatLng(tripDetails!.toLat, tripDetails!.toLong),
        infoWindow: const InfoWindow(title: 'Passenger'),
      ),
    };
  }

  void onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    // Additional setup or map interactions can be done here
    Future.delayed(const Duration(milliseconds: 50),(){
      _mapController.showMarkerInfoWindow(const MarkerId('fromMarker'));
      _mapController.showMarkerInfoWindow(const MarkerId('toMarker'));
    });
  }
}
