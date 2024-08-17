import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app1/cubit/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app1/models/weatherModel.dart';
import 'package:weather_app1/services/weather_seavices.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(NoWeatherStates());
  late WeatherModel weatherModel;
  getWeather({required String cityname}) async {
    try {
       weatherModel =
          await WeatherServices().getCurrentWeather(cityname: cityname);
      emit(WeatherLoadingState( weatherModel));
    } catch (e) {
      emit(WeatherErrorStates(e.toString()));
    }
  }
}
