import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medicure/Models/place.dart';
import 'package:medicure/Models/geometry.dart';
import 'package:medicure/Models/location.dart';
import 'package:medicure/Functionalities/markers_services.dart';
import 'package:medicure/Functionalities/places_services.dart';
import 'package:medicure/Functionalities/geolocator_service.dart';

class ApplicationBlock with ChangeNotifier {
  final geolocatorService = GeolocatorService();
  final placesService = PlacesService();
  final markersService = MarkersService();

  // Variables
  Position currentLocation =new Position(longitude: 0, latitude: 0, timestamp: DateTime.now() , accuracy: 0 , altitude: 0, heading: 0, speed: 0, speedAccuracy: 0);
  late Place selectedLocationStatic;
  String placeType = "";
  List<Marker> markers = <Marker>[];

  ApplicationBlock() {
    setCurrentLocation();
  }

  togglePlaceType(String value, int selected) async {
    if (selected == 1) {
      placeType = value;
    } else {
      placeType = "";
    }

    if (placeType != "") {
      var places = await placesService.getPlaces(
          selectedLocationStatic.geometry.location.lat,
          selectedLocationStatic.geometry.location.lng,
          placeType);
      markers = [];
      for (int i = 0; i < places.length; i++) {
        markers.add(markersService.createMarkerFromPlace(places[i], false));
      }
      markers.add(
          markersService.createMarkerFromPlace(selectedLocationStatic, true));
      notifyListeners();
    }
  }

  setCurrentLocation() async {
    currentLocation = await geolocatorService.getCurrentLocation();
    selectedLocationStatic = Place(
      name: "",
      geometry: Geometry(
        location: Location(
            lat: currentLocation.latitude, lng: currentLocation.longitude),
      ),
      vicinity: '',
    );
    print(currentLocation.latitude);
    print(currentLocation.longitude);
    notifyListeners();
  }
}