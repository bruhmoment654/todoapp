import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: const Text("I am.. First"),
        backgroundColor: Colors.teal[300],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('click');
          },
        ),
        actions: [
          IconButton(onPressed: () => {
            Navigator.pushNamed(context, '/B')
          }, icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
