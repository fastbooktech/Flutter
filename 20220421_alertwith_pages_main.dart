import 'package:alertingapp/stresssmile.dart';
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
        title: const Text('Smiling lover'),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              _showStressSmile(context);
            },
            child: const Text('Press this sentence to see alert page')),
      ),
    );
  }

  _showStressSmile(BuildContext context) {
    // dialog를 보여준다고 표현
    showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.red,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text('Why you have to smile'),
            content: const Text(
                'Smiling helps you to overcome the problems and stress'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                  // 페이지 이동 시 navigator로 context와 router 동시에 push. 왜냐면 별도로 라우터 안만들었으니까.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Stresssmile();
                      },
                    ),
                  );
                },
                child: const Text('종료버튼임'),
              ),
            ],
          );
        });
  }
  // stress Smile 함수

}
