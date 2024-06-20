import 'package:flutter/material.dart';

class DetailWeatherScreen extends StatelessWidget {
  final Map<String, dynamic> weatherData;

  const DetailWeatherScreen({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Details'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Temperature: ${weatherData['main']['temp']}°C',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Weather: ${weatherData['weather'][0]['description']}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Humidity: ${weatherData['main']['humidity']}%',
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Wind Speed: ${weatherData['wind']['speed']} m/s',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
