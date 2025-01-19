import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  List<LatLng> routePoints = [];

  // 開始地点とゴール地点
  final LatLng startPoint = LatLng(35.6586, 139.7454); // 東京タワー
  final LatLng goalPoint = LatLng(35.6812, 139.7671); // 東京駅
  final double distanceLimitKm = 20.0; // 2km の制限距離

  @override
  void initState() {
    super.initState();
    fetchRoute();
  }

  // 経路情報を取得して距離制限で切る関数
  Future<void> fetchRoute() async {
    final url =
        "http://router.project-osrm.org/route/v1/driving/${startPoint.longitude},${startPoint.latitude};${goalPoint.longitude},${goalPoint.latitude}?geometries=geojson";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      // GeoJSON形式の座標データを取得
      final List<dynamic> coordinates =
          data['routes'][0]['geometry']['coordinates'];

      // 緯度経度形式に変換
      final allRoutePoints =
          coordinates.map((coord) => LatLng(coord[1], coord[0])).toList();

      // 2km 分の経路を切り取る
      final trimmedRoutePoints = trimRoute(allRoutePoints, distanceLimitKm);

      setState(() {
        routePoints = trimmedRoutePoints;
      });
    } else {
      throw Exception("経路データを取得できませんでした");
    }
  }

  // 総距離が指定距離を超える手前で経路を切り取る関数
  List<LatLng> trimRoute(List<LatLng> route, double maxDistanceKm) {
    double totalDistance = 0.0;
    final trimmedRoute = <LatLng>[];

    for (int i = 0; i < route.length - 1; i++) {
      final distance = Geolocator.distanceBetween(
            route[i].latitude,
            route[i].longitude,
            route[i + 1].latitude,
            route[i + 1].longitude,
          ) /
          1000.0; // 距離をkmに変換

      totalDistance += distance;

      if (totalDistance <= maxDistanceKm) {
        trimmedRoute.add(route[i]);
      } else {
        break;
      }
    }

    return trimmedRoute;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          initialCenter: startPoint,
          initialZoom: 13,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
          ),
          if (routePoints.isNotEmpty)
            PolylineLayer(
              polylines: [
                Polyline(
                  points: routePoints,
                  strokeWidth: 4.0,
                  color: Colors.blue,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
