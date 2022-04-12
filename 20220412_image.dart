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
      // scaffold 색을 바꾸면 body만 바뀌는 이ㅠㅇ : scaffold 레이어 위의 app bar 레이어 색을 별도로 규정했기 때문
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: const Text('Image Test'),
        // amber [100] 연노랑 amber [700] 찐주황
        backgroundColor: Colors.amber[500],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                'images/smile.png',
                // 가로세로 비율이 고정되어있는 경우라 default 값이라서 가로 1 세로 100이면 작은 애에 맞춰짐
                width: 100,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                'images/smile.png',
                // 가로세로 비율이 고정되어있는 경우라 default 값이라서 가로 1 세로 100이면 작은 애에 맞춰짐
                width: 100,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
