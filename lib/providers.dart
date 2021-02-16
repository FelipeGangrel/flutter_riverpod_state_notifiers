import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_state_notifier/application/weather_notifier.dart';
import 'package:flutter_riverpod_state_notifier/infrastructure/weather_repository.dart';

final weatherRepositoryProvider = Provider<WeatherRepository>(
  (ref) => FakeWeatherRepository(),
);

final weatherNotifierProvider = StateNotifierProvider(
  (ref) => WeatherNotifier(ref.watch(weatherRepositoryProvider)),
);
