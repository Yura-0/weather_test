import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/city.dart';

class GetCityService {
  static const String _baseUrl =
      'https://raw.githubusercontent.com/JetSetExpert/cities-json/master/data/cities.json';

  static Future<List<City>> searchCities(String query) async {
    try {
      final Uri url = Uri.parse('$_baseUrl?search=$query&limit=10');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((city) => City.fromJson(city)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
