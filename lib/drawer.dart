import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
              child: Icon(
            Icons.favorite,
            size: 48,
          )),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('HOME'),
            onTap: () => {Navigator.pushNamed(context, '/home')},
          ),
          ListTile(
            leading: const Icon(Icons.looks_one),
            title: const Text('ONE'),
            onTap: () => {Navigator.pushNamed(context, '/first')},
          )
        ],
      ),
    );
  }
}
