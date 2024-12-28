import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    weatherModel.image!.contains('https:');
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          getThemeColor(weatherModel.weatherCondition)[400]!,
          getThemeColor(weatherModel.weatherCondition)[200]!,
          getThemeColor(weatherModel.weatherCondition)[50]!
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  weatherModel.image!.contains('https:')
                      ? Image.network(weatherModel.image!)
                      : Image.network('https:${weatherModel.image}'),
                  Text(
                    '${weatherModel.temp.round()}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "MaxTemp: ${weatherModel.maxTemp.round()}",
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "MinTemp: ${weatherModel.minTemp.round()}",
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              weatherModel.weatherCondition,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
