import 'package:flutter/material.dart';

import 'drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: const Text("I am.. Home"),
        backgroundColor: Colors.teal[300],
      ),
      drawer: const MyDrawer(),
    );
  }
}
