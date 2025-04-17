import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

abstract class LocationService {
  Future<bool> requestLocationPermission();
  Future<Position> getCurrentPosition();
}

@Injectable(as: LocationService)
class LocationServiceImpl implements LocationService {
  final Logger _logger = Logger();

  LocationServiceImpl();

  @override
  Future<bool> requestLocationPermission() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return false;
        }
      }

      return permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse;
    } catch (e) {
      _logger.e('Error requesting location permission: $e');
      return false;
    }
  }

  @override
  Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
      ),
    );
  }
}
