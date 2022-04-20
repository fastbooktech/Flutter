import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar Icon'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: ([
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.email),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_alarm),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_outlined),
          ),
          GestureDetector(
            onTap: () {
              debugPrint('image is tapped');
            },
            child: Image.asset(
              'images/freeicon.jpg',
              width: 30,
              height: 30,
            ),
          ),
          // ignore: unnecessary_const
          const SizedBox(
            width: 20,
          ),
        ]),
      ),
    );
  }
}
