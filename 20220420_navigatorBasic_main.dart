import 'package:flutter/material.dart';
import 'package:navigator_with_two_pages_app/screen.dart';
import 'package:navigator_with_two_pages_app/screen1st.dart';
import 'package:navigator_with_two_pages_app/screen2nd.dart';

void main() {s
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 딕셔너리. 키와 벨류가 있는 dart 언어의 맵. { 안에 key : value}
      initialRoute: '/',
      // 라우팅 테이블
      routes: {
        // 첫번째 키 : 벨류
        '/': ((context) => const Screen()),

        // 두번째 키 : 벨류
        '/1st': (context) {
          return const Screen1st();
        },

        // 세번째 키 : 벨류
        '/2nd': ((context) => const Screen2nd())
      },
    );
  }
}
