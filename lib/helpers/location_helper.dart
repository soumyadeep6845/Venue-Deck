import 'dart:convert';

// import 'package:flutter_config/flutter_config.dart';
import 'package:http/http.dart' as http;

const MAPBOX_API_KEY =
    'pk.eyJ1Ijoic291bXlhZGVlcDY4NDUiLCJhIjoiY2t4NGdkNWNxMXYyazJwb2JnNm40c2U4OCJ9.tBQ2K1Uqkl6LON0Aj3D6vQ';

class LocationHelper {
  static String generateLocationPreviewImage({
    double? latitude,
    double? longitude,
  }) {
    return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/pin-l($longitude,$latitude)/$longitude,$latitude,14.25,0,0/600x300?access_token=$MAPBOX_API_KEY';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    // final url = Uri.parse('https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$MAPBOX_API_KEY');
    final params = {
      'latlng': '$lat,$lng',
      'key': MAPBOX_API_KEY,
    };
    final url = Uri.https(
      'maps.googleapis.com',
      '/maps/api/geocode/json',
      params,
    );
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}
