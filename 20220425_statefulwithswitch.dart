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
//1. 변수
  late bool switchValue;
  late Color buttonColor;

// 2. 초기화
  @override
  void initState() {
    super.initState();
    switchValue = false;
    buttonColor = Colors.blue;
  }

//3. main
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('제목'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //3-1) 버튼
            ElevatedButton(
              onPressed: () {},
              child: const Text('버튼'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor),
              ),
            ),

            //3-2) 여백
            const SizedBox(
              height: 50,
            ),

            //3-3) 슬라이딩 스위치
            Switch(
              //우항에 사용자 지정 변수 swtich Value, value
              value: switchValue,
              onChanged: (value) {
                changeButtonColor(value);
              },
            ),
          ],
        ),
      ),
    );
  }

  //4. 함수
  changeButtonColor(bool value) {
    setState(() {
      switchValue = value;

      if (value == true) {
        buttonColor = Colors.red;
      } else {
        buttonColor = Colors.blue;
      }
    });
  }

  changeSwitch() {
    setState(() {
      if (switchValue == true) {
        switchValue = false;
      } else {
        switchValue = true;
      }
    });
  }
}
