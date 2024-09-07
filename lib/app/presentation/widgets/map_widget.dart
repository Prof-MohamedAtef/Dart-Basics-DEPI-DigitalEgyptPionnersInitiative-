import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../viewmodels/map_view_model.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late Future<void> _loadTripDetailsFuture;

  @override
  void initState() {
    super.initState();
    final viewModel = context.read<MapViewModel>();
    _loadTripDetailsFuture = viewModel.loadTripDetails(); // Trigger future once
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _loadTripDetailsFuture, // Call only once
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
              child: CircularProgressIndicator()); // Loading indicator
        } else if (snapshot.hasError) {
          return Center(
              child: Text('Error: ${snapshot.error}')); // Error message
        } else {
          final viewModel = context.watch<MapViewModel>();
          return GoogleMap(
            onMapCreated: viewModel.onMapCreated,
            initialCameraPosition: const CameraPosition(
              target: LatLng(30.62122666083113, 32.2848142155544),
              // Set initial position
              zoom: 13,
            ),
            markers: viewModel.markers,
          );
        }
      },
    );
  }
}