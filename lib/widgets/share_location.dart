import 'package:share_plus/share_plus.dart';

void shareLocation(String latitude, String longitude) {
  final String googleMapsUrl =
      'https://www.google.com/maps?q=$latitude,$longitude';
  final String message = 'Check out this location: $googleMapsUrl';

  Share.share(message);
}
