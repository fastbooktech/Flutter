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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //1. 변수선언
  late TextEditingController value1;
  late TextEditingController value2;
  late int sum;

  //2. 초기화
  @override
  void initState() {
    super.initState();
    value1 = TextEditingController();
    value2 = TextEditingController();
    sum = 0;
  }

  //3. main 구현
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.amber[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //3-1) 제목
            const Text(
              '계산기',
              style: TextStyle(fontSize: 20),
            ),
            //3-2) 키보드 숫자형식 + sizedbox로 위젯 크기 줄이기
            SizedBox(
              width: 300,
              child: TextField(
                controller: value1,
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: value2,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    //입력받은 문자형태의 숫자를 int형 숫자로 취급해 계산
                    sum = int.parse(value1.text) + int.parse(value2.text);
                  });
                },
                child: SizedBox(
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.add),
                      SizedBox(width: 20),
                      Text('덧셈 결과 확인하기'),
                    ],
                  ),
                ),
              ),
            ),

            Text(
              '덧셈 결과 : $sum',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
