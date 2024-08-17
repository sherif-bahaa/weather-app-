import 'package:flutter/material.dart';

class Noweather extends StatelessWidget {
  const Noweather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "there is no weather 😔 start ",
            style: TextStyle(fontSize: 27),
          ),
          Text(
            "searching now 🔎",
            style: TextStyle(fontSize: 27),
          ),
        ],
      ),
    );
  }
}
