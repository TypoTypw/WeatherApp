import 'dart:convert';

import 'package:http/http.dart' as http;
import 'Model/weatherModel.dart';

class WeatherData {
  Future<Weather> getWeatherData(var latitude, var longitude) async {
    Uri uri = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=ef3ad29714d24b16a15145255231502&q=$latitude,$longitude&aqi=no');
    var response = await http.get(uri);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
