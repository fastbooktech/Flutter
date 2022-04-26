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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //변수
  late int count;
  //초기화
  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counting application'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // //floating acction 버튼
            // FloatingActionButton(
            //   backgroundColor: Colors.red[200],
            //   onPressed: () {
            //     //state 업데이트
            //     setState(() {
            //       count++;
            //     });
            //   },
            //   child: const Icon(Icons.favorite),
            // ),

            //간격
            const SizedBox(
              height: 20,
            ),

            Text('받은 좋아요 개수 :  $count '),
          ],
        ),
      ),

      //진짜 floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            const Icon(Icons.favorite_outlined);
          });
        },
        child: const Icon(Icons.favorite_border),
        backgroundColor: Colors.red[200],
      ),
    );
  }
}
