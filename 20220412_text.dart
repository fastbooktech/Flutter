import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('삼국지'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('유비'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('관우'),
                SizedBox(
                  width: 10,
                ),
                Text('장비'),
              ],
            ),
            const Text('조조'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('여포'),
                SizedBox(
                  width: 10,
                ),
                Text('동탁'),
              ],
            ),
          ],
        ),
        // child: Column(
        //     Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
        //   Text('James'),
        //   SizedBox(
        //     width: 10,
        //   ),
        //   Text('Cathy'),
        //   Text('Kenny'),
        // ],
        // ),
      ),
    );
  }
}
