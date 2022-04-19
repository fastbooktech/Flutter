//NP : navigator에서 두번째화면은 첫번째화면 위에 겹쳐져있음
//따라서 두번째페이지 back하면 첫번째 페이지가 다시 나오게 됨

// 아예 폴더를 따로 구분해서 페이지 만들 디렉토리 만드는게 나음

//NP2: NAGIVATOR에서 pop은 스택에 넣고 push pop 하는 개념이라서 1 2 3페이지 차례로 거쳤으면 3에서 버튼 누를때 마지막에 들어온 3이 나가니까 2가, 2에서 누르면 1이 됨

//NP3 : 버튼 색 바꾸기 두가지 방법
//  backgroundColor: MaterialStateProperty.all(Colors.purple),
// style: ElevatedButton.styleFrom(
//   primary: Colors.redAccent,
// ),
import 'package:flutter/material.dart';

import 'Page/first_page.dart';

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
      home: const FirstPage(),
    );
  }
}
