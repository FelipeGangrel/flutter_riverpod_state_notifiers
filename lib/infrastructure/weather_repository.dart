import 'dart:math';
import 'package:flutter_riverpod_state_notifier/infrastructure/weather.dart';

abstract class WeatherRepository {
  Future<Weather> fetchWeather(String cityName);
}

class FakeWeatherRepository implements WeatherRepository {
  double cachedTemp;

  @override
  Future<Weather> fetchWeather(String cityName) {
    return Future.delayed(const Duration(seconds: 1), () {
      final random = new Random();
      if (random.nextBool()) {
        throw NetworkException();
      }

      cachedTemp = 20 + random.nextInt(15) + random.nextDouble();

      return Weather(
        cityName: cityName,
        temperature: cachedTemp,
      );
    });
  }
}

class NetworkException implements Exception {}
