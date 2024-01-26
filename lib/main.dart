import 'package:demo/first_screen.dart';
import 'package:demo/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DemoHome());
}

class DemoHome extends StatelessWidget {
  const DemoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/home': (context) => const HomePage(),
      '/first': (context) => const FirstPage(),
    }, debugShowCheckedModeBanner: false, home: const FirstPage());
  }
}
