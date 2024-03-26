import 'package:open_meteo/open_meteo.dart';

abstract class WeatherService {
  Future<Map<String, dynamic>> getWeatherData(double latitude, double longitude);
}

class OpenMeteoWeatherService implements WeatherService {
  @override
  Future<Map<String, dynamic>> getWeatherData(double latitude, double longitude) async {
    try {
      var weather = Weather(
        latitude: latitude,
        longitude: longitude,
        temperature_unit: TemperatureUnit.celsius,
      );

      var hourly = [Hourly.temperature_2m, Hourly.wind_speed_10m,];
      var result = await weather.raw_request(hourly: hourly);

      return result;
    } catch (e) {
      return {}; 
    }
  }
}
