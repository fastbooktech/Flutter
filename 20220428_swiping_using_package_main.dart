import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

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
        primarySwatch: Colors.purple,
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
  //이미지들 리스트로 묶어주기
  //1. 변수
  late List imageName;
  int currentImage = 0;

//2. 초기화
  @override
  void initState() {
    super.initState();
    imageName = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text('Image Swiping 하기'),
      ),
      body: SimpleGestureDetector(
        onHorizontalSwipe: _onHorizontalSwipe,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                imageName[currentImage],
              ),
              Image.asset(
                'images/${imageName[currentImage]}',
                width: 360,
                height: 540,
              )
            ],
          ),
        ),
      ),
    );
  }

  _onHorizontalSwipe(SwipeDirection direction) {
    setState(() {
      if (direction == SwipeDirection.left) {
        currentImage += 1;
        //끝까지 스와이핑
        if (currentImage >= imageName.length) {
          currentImage = 0;
        }
      } else {
        currentImage -= 1;
        if (currentImage < 0) {
          //맨 마지막 순서인 경우 (0번째부터 시작이므로)
          currentImage = imageName.length - 1;
        }
      }
    });
  }

  _onVerticalSwipe(SwipeDirection direction) {
    setState(() {
      if (direction == SwipeDirection.up) {
        currentImage += 1;
        if (currentImage >= imageName.length) {
          currentImage = 0;
        } else {
          currentImage -= 1;
          if (currentImage < 0) {
            currentImage = imageName.length - 1;
          }
        }
      }
    });
  }
}
