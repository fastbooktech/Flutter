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
      home: const Statefulcounting(),
    );
  }
}

class Statefulcounting extends StatefulWidget {
  const Statefulcounting({Key? key}) : super(key: key);

  @override
  State<Statefulcounting> createState() => _StatefulcountingState();
}

class _StatefulcountingState extends State<Statefulcounting> {
  // 초기화는 나중에 할게 : late
  //1. 변수설정
  late int count;

  //2. 초기화. void 다음엔 개발자맘대로, super.initState는 내장함수
  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Up & Down'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('현재 클릭수는 $count 입니다.'),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
