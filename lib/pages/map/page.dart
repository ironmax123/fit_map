import 'package:fit_map/model/db/dbProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

import 'logic/coordinate_calc.dart';
import 'widgets/bottomsheet.dart';

// ignore: must_be_immutable
class MapPage extends HookConsumerWidget {
  final LatLng pin; // 初期ピンの位置
  final LatLng goal; // ゴールの位置
  const MapPage({required this.pin, required this.goal, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zoom = useState(9.5);
    final mapController = useMemoized(() => MapController());
    final TextEditingController kmController = TextEditingController();
    final double distanceLimitKm = 60.0;

    final initPin = useState(pin);
    final center = useState<LatLng>(pin);
    void updateCenter() {
      // 現在のカメラの中心位置を取得
      final currentCenter = mapController.camera.center;
      center.value = currentCenter;
    }

    final routePoints = useState<List<LatLng>>([]); // ポリラインのポイントリスト

    useEffect(() {
      // 非同期でルートを取得
      Future<void> loadRoute() async {
        try {
          final fetchedRoutePoints = await fetchRoute(
            pin,
            goal,
            distanceLimitKm,
            routePoints,
          );
          routePoints.value = fetchedRoutePoints;
        } catch (e) {
          debugPrint("ルート取得エラー: $e");
        }
      }

      loadRoute(); // 非同期処理を実行
      return null; // disposeは不要
    }, []);

    return Scaffold(
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          initialCenter: initPin.value,
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
          MarkerLayer(
            markers: [
              Marker(
                width: 30.0,
                height: 30.0,
                point: goal,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.blue,
                  size: 50,
                ),
                rotate: true,
              ),
            ],
          ),
          if (routePoints.value.isNotEmpty)
            PolylineLayer(
              polylines: [
                Polyline(
                  points: routePoints.value,
                  strokeWidth: 3.0,
                  color: Colors.blue,
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
              updateCenter();
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
              updateCenter();
              zoom.value -= 1.5;
              if (zoom.value <= 8.0) {
                zoom.value = 8.0;
              }
              mapController.move(center.value, zoom.value);
            },
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'edit',
            child: const Icon(Icons.edit),
            onPressed: () {
              showAddItemSheet(context, kmController, ref);
            },
          ),
          FloatingActionButton(
            heroTag: 'delete',
            child: const Icon(Icons.delete),
            onPressed: () {
              reset(ref);
            },
          ),
        ],
      ),
    );
  }
}
