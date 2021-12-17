import 'package:flutter_config/flutter_config.dart';

// final String? apiKey = FlutterConfig.get('MAPBOX_API_KEY');
const MAPBOX_API_KEY = 'pk.eyJ1Ijoic291bXlhZGVlcDY4NDUiLCJhIjoiY2t4NGdkNWNxMXYyazJwb2JnNm40c2U4OCJ9.tBQ2K1Uqkl6LON0Aj3D6vQ';

class LocationHelper {
  static String generateLocationPreviewImage({
    double? latitude,
    double? longitude,
  }) {
    // return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/pin-l($longitude,$latitude)/$longitude,$latitude,14.25,0,0/600x300?access_token=$apiKey';
    return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/pin-l($longitude,$latitude)/$longitude,$latitude,14.25,0,0/600x300?access_token=$MAPBOX_API_KEY';
    
  }
}
