import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends HookWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final zoom = useState(17.5);
    final mapController = useMemoized(() => MapController());
    final center = useState(const LatLng(34.7021294, 135.497291));
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
            heroTag: 'zoomOut',
            child: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
