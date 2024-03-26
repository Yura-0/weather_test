class City {
  final String city;
  final String cityAscii;
  final double lat;
  final double lng;
  final String country;
  final String iso2;
  final String iso3;
  final String adminName;
  final String capital;
  final int population;
  final int id;

  City({
    required this.city,
    required this.cityAscii,
    required this.lat,
    required this.lng,
    required this.country,
    required this.iso2,
    required this.iso3,
    required this.adminName,
    required this.capital,
    required this.population,
    required this.id,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      city: json['city'],
      cityAscii: json['city_ascii'],
      lat: double.parse(json['lat']),
      lng: double.parse(json['lng']),
      country: json['country'],
      iso2: json['iso2'],
      iso3: json['iso3'],
      adminName: json['admin_name'],
      capital: json['capital'],
      population: int.parse(json['population']),
      id: int.parse(json['id']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'city': city,
      'city_ascii': cityAscii,
      'lat': lat.toString(),
      'lng': lng.toString(),
      'country': country,
      'iso2': iso2,
      'iso3': iso3,
      'admin_name': adminName,
      'capital': capital,
      'population': population.toString(),
      'id': id.toString(),
    };
  }
}

