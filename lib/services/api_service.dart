import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather.dart';

class ApiService {
  final String apiKey = 'a9eeb45718f32b664fd51f1389cdf22';

  Future<Weather> fetchWeather(String city) async {
    final response = await http.get(
      Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric'),
    );

    if (response.statusCode == 200) {
      return Weather.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
