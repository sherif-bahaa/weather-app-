import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app1/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app1/cubit/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app1/views/search.dart';
import 'package:weather_app1/widget/no_weather.dart';
import 'package:weather_app1/widget/weather_info.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'weather app ',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Searchview();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is NoWeatherStates) {
            return const Noweather();
          } else if (state is WeatherLoadingState) {
            return Weatherinfo();
          } else {
            return const Text('opps there is error');
          }
        },
      ),
    );
  }
}

//block battern//
//1-create states
//2-create cubit
//3-create function
//4-provide cubit
//5-integrate cubit
//6-trigger cubit 