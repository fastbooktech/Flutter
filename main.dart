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
        primarySwatch: Colors.green,
      ),
      home: const Quiz(),
    );
  }
}

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text('Image EX01'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(23.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'pikachus_image/pikachu-1.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(23.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'pikachus_image/pikachu-1.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(23.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'pikachus_image/pikachu-2.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(23.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'pikachus_image/pikachu-3.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
