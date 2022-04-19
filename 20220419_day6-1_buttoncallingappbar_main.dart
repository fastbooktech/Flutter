import 'package:button_with_app/snackbar.dart';
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
      home: const ButtonwithApp(),
    );
  }
}

class ButtonwithApp extends StatelessWidget {
  const ButtonwithApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: const Wholepage(),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ElevatedButton(
      //         onPressed: () {
      //           // 아래에서 함수로 해당 pressed를 정의
      //           // function
      //           snackBarFunction(context);
      //         },
      //         child: const Text(
      //           'Snackbar Button1',
      //         ),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           snackBarFunction2(context);
      //         },
      //         child: const Text('Snackbar Button2'),
      //       ),
      //     ],
      //   ),
      //   // child: ElevatedButton(
      //   //   onPressed: () {
      //   //     ScaffoldMessenger.of(context).showSnackBar(
      //   //       const SnackBar(
      //   //         content: Text('ElevatedButton is clicked'),]
      //   //         duration: Duration(seconds: 5,),
      //   //       ),
      //   //     );
      //   //   },
      //   //   child: const Text('Snackbar Button'),
      //   // ),
      // ),
    );
  }
}


// class를 다른 파일에서 선언하여 whole page를 body에서 단 한줄의 코드로 썼다.
// function을 이용하여 반복되는 버튼의 onpressed style을 꾸며주었다.