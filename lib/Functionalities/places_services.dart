import 'package:medicure/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:medicure/Models/place.dart';

class PlacesService {
  Future<List<Place>> getPlaces(
      double lat, double lng, String placeType) async {
    var url = Uri.parse('https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&radius=3000&type=$placeType&key=$kapiKey');
    var response = await http.get(url);
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['results'] as List;
    return jsonResults.map((place) => Place.fromJson(place)).toList();
  }
}