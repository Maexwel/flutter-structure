import 'package:geolocator/geolocator.dart';

// Service used to work with geolocation
class GeolocatorService {
  double _longitude;
  double _latitude;
  double _altitude;

  // Location request function
  Future<String> requestLocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.medium); // get current position
      _longitude = position.longitude;
      _latitude = position.latitude;
      _altitude = position.altitude;
      return position.toString();
    } catch (err) {
      return 'Unable to get current location';
    }
  }

  // Getters
  double get longitude => _longitude;
  double get latitude => _latitude;
}
