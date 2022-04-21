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
        title: const Text('Healthy body'),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              _showDialog(context);
            },
            child: const Text('Touch this sentence and go to the alert page')),
      ),
    );
  }

  // stateless 위젯 안의 첫번째 위젯에서 쓸 showdialog 함수니깐 여기다 만들어야지 stl 밖에다 만들면 안됨. _ 언더바 있어서 private이거든
  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        // 창을 닫게끔, 종료버튼 이외의 것을 누르면 창 안닫히게 하려면
        barrierDismissible: false,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text('Page 이동'),
            content: const Text('아래의 버튼을 누르면 페이지 이동을 합니다.'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(ctx).pop();
                },
                child: const Text('Page 이동'),
              ),
            ],
          );
        });
  }
}
