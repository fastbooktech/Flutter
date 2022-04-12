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
        title: const Text('Text with column and row'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // james

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //질문 왜 여기 const 없으면 오류? 그냥 render 한번만 하는게 row든 column이든 무조건 피수?
              children: const [
                Icon(Icons.email_rounded),
                SizedBox(
                  width: 10,
                ),
                Text('James'),
              ],
            ),

            // 사이간격
            const SizedBox(
              height: 20,
            ),

            // cathy
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //질문 왜 여기 const 없으면 오류? 그냥 render 한번만 하는게 row든 column이든 무조건 피수?
              children: const [
                Icon(Icons.account_balance),
                SizedBox(
                  width: 10,
                ),
                Text('Cathy'),
              ],
            ),

            // 사이간격
            const SizedBox(
              height: 20,
            ),

            // kenny
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //질문 왜 여기 const 없으면 오류? 그냥 render 한번만 하는게 row든 column이든 무조건 피수?
              children: const [
                Icon(Icons.account_circle),
                SizedBox(
                  width: 10,
                ),
                Text('kenny'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
