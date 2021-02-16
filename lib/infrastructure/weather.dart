import 'package:flutter/foundation.dart';

class Weather {
  final String cityName;
  final double temperature;

  Weather({@required this.cityName, @required this.temperature});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Weather &&
        o.cityName == cityName &&
        o.temperature == temperature;
  }

  @override
  int get hashCode => cityName.hashCode ^ temperature.hashCode;
}
