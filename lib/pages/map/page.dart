import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

// ignore: must_be_immutable
class MapPage extends HookWidget {
  LatLng pin;
  MapPage({required this.pin, super.key});

  @override
  Widget build(BuildContext context) {
    final zoom = useState(17.5);
    final mapController = useMemoized(() => MapController());
    final center = useState(pin);

    return Scaffold(
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          initialCenter: center.value,
          initialZoom: zoom.value,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 30.0,
                height: 30.0,
                point: pin,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 50,
                ),
                rotate: true,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'zoomIn',
            child: const Icon(Icons.add),
            onPressed: () {
              zoom.value += 1.5;
              if (zoom.value >= 19.0) {
                zoom.value = 19.0;
              }
              mapController.move(center.value, zoom.value);
            },
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'zoomOut',
            child: const Icon(Icons.remove),
            onPressed: () {
              zoom.value -= 1.5;
              if (zoom.value <= 10.0) {
                zoom.value = 10.0;
              }
              mapController.move(center.value, zoom.value);
            },
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'edit',
            child: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
