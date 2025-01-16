import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';

coordinate(String address) async {
  List<Location> locations = await locationFromAddress(address);
  if (locations.isNotEmpty) {
    final location = locations.first;
    final locate = LatLng(location.latitude, location.longitude);
    print(locate);
    return locate;
  }
}
