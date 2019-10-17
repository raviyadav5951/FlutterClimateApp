import 'package:geolocator/geolocator.dart';

class Location {
  double latitude, longitude;

  Future <void>getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;

      // print(latitude);
      // print(longitude);

      // print(position);
    } catch (e) {
      print(e);
    }
  }
}
