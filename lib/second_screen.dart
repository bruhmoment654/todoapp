import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: const Text("I am.. Second"),
        backgroundColor: Colors.teal[300],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('click');
          },
        ),
        actions: [
          IconButton(onPressed: () => {Navigator.pop(context)}, icon: const Icon(Icons.remove))
        ],
      ),
    );
  }
}
