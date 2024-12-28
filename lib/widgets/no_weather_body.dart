import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'There is no weather ... start searching now.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, color: Colors.black),
      ),
    );
  }
}
