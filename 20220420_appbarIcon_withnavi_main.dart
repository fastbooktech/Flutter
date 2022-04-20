import 'package:flutter/material.dart';
import 'package:nagivator_withappbar/receivedmail.dart';
import 'package:nagivator_withappbar/screen.dart';
import 'package:nagivator_withappbar/sendmail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 여기서 바로 라우터 생성
      initialRoute: '/',
      routes: {
        '/': ((context) => const Screen()),
        '/Sendmail_router': (context) {
          return const Sendmail();
        },
        '/Receivedmail_router': (context) {
          return const Receivedmail();
        },
      },
    );
  }
}
