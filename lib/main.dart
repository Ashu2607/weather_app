import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/main_weather_screen.dart'; // Updated import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await SharedPreferences.getInstance(); // Initialize SharedPreferences
  } catch (e) {
    // Handle initialization error if necessary
    print('Error initializing SharedPreferences: $e');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainWeatherScreen(), // Ensure this references the correct widget
    );
  }
}
