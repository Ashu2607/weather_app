import 'package:flutter/material.dart';
import '../models/weather.dart';
import '../services/api_service.dart';

class AppState extends ChangeNotifier {
  final ApiService apiService = ApiService();

  bool isLoading = false;
  Weather? weather;
  String homeLocation = 'London';

  Future<void> fetchWeather(String city) async {
    isLoading = true;
    notifyListeners();
    weather = await apiService.fetchWeather(city);
    isLoading = false;
    notifyListeners();
  }
}
