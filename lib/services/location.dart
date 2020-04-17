import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationManager {
  Future<Position> getLocation() async {
    try {
      return await Geolocator() .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    } catch (e) {
      debugPrint("Caught an exception while getting location due to $e");
      return null;
    }
  }
}
