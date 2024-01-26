import 'package:demo/drawer.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: const Text("I am.. First"),
        backgroundColor: Colors.teal[300],
      ),
      drawer: const MyDrawer(),
    );
  }
}
