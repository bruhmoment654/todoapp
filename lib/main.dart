import 'package:demo/first_screen.dart';
import 'package:demo/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DemoHome());
}

class DemoHome extends StatelessWidget {
  const DemoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/A': (context) => const FirstScreen(),
      '/B': (context) => const SecondScreen(),
    }, debugShowCheckedModeBanner: false, home: const FirstScreen());
  }
}
