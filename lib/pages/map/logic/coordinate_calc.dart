import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<LatLng>> fetchRoute(
  startPoint,
  goalPoint,
  distanceLimitKm,
  context,
) async {
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

    // [distanceLimitKm]分の経路を切り取る
    final trimmedRoutePoints = trimRoute(allRoutePoints, distanceLimitKm);

    return trimmedRoutePoints; // 修正：List<LatLng> を返す
  } else {
    throw Exception("経路データを取得できませんでした");
  }
}

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
