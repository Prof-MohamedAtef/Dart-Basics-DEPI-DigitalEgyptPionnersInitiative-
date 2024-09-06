import 'package:fluterprojects/app/presentation/pages/map_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatelessWidget {
  final Function(GoogleMapController) onMapCreated;
  MapScreen widget;
  Set<Marker> markers;

  MapWidget({
    super.key,
    required this.onMapCreated,
    required this.widget,
    required this.markers
  });

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: onMapCreated,
      initialCameraPosition: CameraPosition(
        target: LatLng(widget.fromLat, widget.fromLong),
        // Initial position (e.g., San Francisco)
        zoom: 13,
      ),
      markers: markers,
      myLocationEnabled: true,
      // Add other properties as needed
    );
  }
}
