import 'dart:async';

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
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //글자를 하나씩 리스트에 넣고 변화되는 상태니까 나중에 정의하겠단 뜻으로 late
  late List str;
  late int currentCharacter;
  late String character;

  @override
  void initState(){
    super.initState();
    str = ['파', '인', '애', '플'];
    currentCharacter =0;
    character = str[currentCharacter];
    
    
    Timer.periodic (const Duration (seconds: 1), (Timer timer){
      changeCharacter();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('파인애플 글자 애니메이션'),
        backgroundColor: Colors.lime,
        centerTitle: true,
      ),

      body : Center(
        child : Text(
          character,
          style : const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 52,
            
          ),
        ),
      ),
   );
  }

// 1초마다 리스트에 바꿀 글자 위치 설정
  changeCharacter(){
    setState(() {
      //첫글자 구현 후 다음꺼 구현 위에 위치 업데이트
      currentCharacter++;

      if(currentCharacter >= str.length){
        currentCharacter =0;
        character = str[currentCharacter];
      }

      else {
        character += str[currentCharacter];
      }
    });
  }
}



// //내 시도
// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({ Key? key }) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var total = 0;
//   var name = ['대', '한', '민', '국'];

//   @override
//   void initState(){
//     super.initState();
//     Timer.periodic (const Duration (seconds: 1), (Timer timer){
//       createLetter();
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title : const Text('LED 광고'),
//         backgroundColor: Colors.grey,
//         centerTitle: true,
//       ),
//       body: Center(
       
//       ),
//       );
//       // body: ListView.builder(
//       //   scrollDirection: Axis.horizontal,
//       //   itemCount: total,
//       //   itemBuilder: (c,i){
//       //     return Text(name[i]);
//       //   },
//       // ),
//     //);
//   }

//   createLetter(){
//     Text(name[total]);
//     if(total<=name.length){
//     setState(() {
//       total++;
//     });
//     }

//   }
// }