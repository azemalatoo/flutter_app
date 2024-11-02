import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Map Screen')),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(42.8746, 74.5964), // Coordinates for Bishkek
          zoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: const ['a', 'b', 'c'],
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(42.8746, 74.5964), // Coordinates for Bishkek
                builder: (ctx) => const Icon(Icons.location_pin, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}