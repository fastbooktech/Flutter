// 함수는 ;, 함수 안은 항상 콤마 사용해서 코드 끝내기

// appbar+ body = scaffold
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
// stl 입력
class  MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Netflix 넷플릭스'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          // 위치. mainaxisalignment.end는 하단, center는 중간
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: const [
            // 리스트 안의 텍스트는 한 p 문단 안의 글과 같아서 행간격을 조정하려면 sizedbox 이용해야.
             Text("Home (홈화면)"),
             
             SizedBox(
               height:50,
             ),
             Text("History (시청기록)"),
             SizedBox(
               height:50,
             ),
             Text("Recommendation (추천)"),
          ],
        )
      ),

    );
  }
}
