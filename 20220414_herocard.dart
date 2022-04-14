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
        primarySwatch: Colors.amber,
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
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: const Text(
          'THE HERO : HIDDEN CARD',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. 이순신 장군 얼굴
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('image_sunshin/sunshin.jpg'),
                  ),
                ],
              ),
            ),

            //3. 소개
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                children: [
                  // 3-1)  카테고리(HERO NAME)
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text(
                        'KOREAN HERO',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  // 3-2-1) 이순신 장군 이름
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: Text(
                        'SUNSHIN LEE',
                        style: TextStyle(
                            fontSize: 68,
                            fontWeight: FontWeight.normal,
                            color: Colors.brown,
                            fontFamily: 'Signatra'),
                      ),
                    ),
                  ),

                  // 2. 구분선
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 20, 80, 60),
                    child: Divider(
                      color: Colors.brown[400],
                      thickness: 2.0,
                    ),
                  ),

                  // 3-1)  카테고리(QUOTE)
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text(
                        'QUOTE',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  // 3-2-2) 이순신 장군 명언
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        "Do not Inform",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 185, 131, 112),
                            fontFamily: 'Signatra'),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        "MY DEATH",
                        style: TextStyle(
                            fontSize: 78,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 185, 131, 112),
                            fontFamily: 'Signatra'),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        "to others!",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 185, 131, 112),
                            fontFamily: 'Signatra'),
                      ),
                    ),
                  ),
                  // 2. 구분선
                  Padding(
                    padding: const EdgeInsets.fromLTRB(160, 50, 160, 60),
                    child: Divider(
                      color: Colors.brown[400],
                      thickness: 2.0,
                    ),
                  ),
                ],
              ),
            ),

            // 4. 거북선
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: const [
            //       CircleAvatar(
            //         radius: 50.0,
            //         backgroundImage: AssetImage('image_sunshin/turtle.gif'),
            //         backgroundColor: Colors.transparent,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

// Column(
//   children:  [
//     Text('Test0'),
//     Text('Test1'),
//     Text('Test2'),
//   ],
// ),
// Column(
//   children: [
//     Text('Test4'),
//     Text('Test5'),
//     Text('Test6'),
//   ],
// ),
