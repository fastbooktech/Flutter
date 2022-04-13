// np : 이미지 비율 조정은fit: BoxFit.기타요소
// singlechildscrollview 위해서 center를 wrap with widget으로 child 요소로 보기
//  스크롤바?
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
      home: const Pikachu(),
    );
  }
}

class Pikachu extends StatelessWidget {
  const Pikachu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image EX'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'pikachu/pikachu-1.jpg',
                width: 50,
                height: 70,
              ),
              Image.asset(
                'pikachu/pikachu-2.jpg',
                width: 50,
                height: 70,
              ),
              Image.asset(
                'pikachu/pikachu-3.jpg',
                width: 50,
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
