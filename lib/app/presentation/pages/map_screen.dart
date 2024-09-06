import 'package:fluterprojects/app/presentation/widgets/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  final double fromLat;
  final double fromLong;
  final double toLat;
  final double toLong;

  const MapScreen({
    super.key,
    required this.fromLat,
    required this.fromLong,
    required this.toLat,
    required this.toLong,
  });

  @override
  State<StatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late Set<Marker> _markers;
  late GoogleMapController _mapController;

  @override
  void initState() {
    super.initState();
    _markers = {
      Marker(
        markerId: const MarkerId('fromMarker'),
        position: LatLng(widget.fromLat, widget.fromLong),
        infoWindow: const InfoWindow(
          title: '3 min',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ),
      Marker(
        markerId: const MarkerId('toMarker'),
        position: LatLng(widget.toLat, widget.toLong),
        infoWindow: const InfoWindow(
          title: '22 min',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      ),
    };
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    // Show info windows for both markers after the map is initialized
    Future.delayed(const Duration(milliseconds: 50), () {
      _mapController.showMarkerInfoWindow(const MarkerId('fromMarker'));
      _mapController.showMarkerInfoWindow(const MarkerId('toMarker'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Map'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous screen
            },
          ),
        ),
        body: Column(children: [
          Expanded(
            child: MapWidget(
                onMapCreated: (GoogleMapController) {
                  _onMapCreated;
                },
                widget: widget,
                markers: _markers),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  'This is the bottom widget',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
          ),
        ]));
  }
}
