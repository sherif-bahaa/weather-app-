import 'package:weather_app1/models/weatherModel.dart';

class WeatherStates {}

class NoWeatherStates extends WeatherStates {}

class WeatherLoadingState extends WeatherStates {
  final WeatherModel weatherModel;

  WeatherLoadingState( this.weatherModel);
}

class WeatherErrorStates extends WeatherStates {
  final String errorMasseg;

  WeatherErrorStates(this.errorMasseg);
}
