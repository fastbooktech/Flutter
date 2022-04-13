// np 기본포맷
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text('Pikachus'),
//     ),

//     body:Center(
//       child: Column(
//         children: [],
//       ),
//     ),
//   );
// }

// 가로스크롤
// row에 singlechildscroll만 먹이면 끝ㅈ나는게 ㅇ니고, vertical 수정 해주어야.
// child: SingleChildScrollView(
//   scrollDirection: Axis.horizontal,

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
        primarySwatch: Colors.red,
      ),
      home: const Pikachuimages(),
    );
  }
}

class Pikachuimages extends StatelessWidget {
  const Pikachuimages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pikachus'),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                child: Image.asset(
                  'pikachus/pikachu-1.jpg',
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                child: Image.asset(
                  'pikachus/pikachu-2.jpg',
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                child: Image.asset(
                  'pikachus/pikachu-3.jpg',
                  width: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
