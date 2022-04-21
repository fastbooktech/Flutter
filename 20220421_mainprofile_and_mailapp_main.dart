import 'package:flutter/material.dart';
import 'package:pikachuwithmail_app/pages/bonam.dart';
import 'package:pikachuwithmail_app/two_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return const Twobuttons();
        },
        '/bonam': (context) {
          return const Bonam();
        },
        // '/badum' : (context) {
        //   return const Badum();
        // }
      },
    );
  }
}
