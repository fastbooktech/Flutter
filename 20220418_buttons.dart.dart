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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 두 버튼 모두 색은 style : 버튼명(primary : 색),
            // TextButton
            TextButton(
              // onPressed 함수 : 눌렀을 때 이거 할거야
              // onPressed: () {
              //   print('text button is pressed');
              // },
              onPressed: () {
                debugPrint('text button is pressed');
              },
              // 길게 누르는 경우를 구분할 수 있다.
              onLongPress: () {
                debugPrint('text button is pressed long');
              },
              child: const Text(
                'Text Button',
                // 글자 style
                style: TextStyle(fontSize: 20),
              ),

              // 버튼 style
              style: TextButton.styleFrom(
                primary: Colors.red,
              ),
            ),

            // Elevated Button
            ElevatedButton(
              // 1) onpressed 함수 통해 마찬가지로 조정
              onPressed: () {
                debugPrint('Elevated button is pressed');
              },
              onLongPress: () {
                debugPrint('Elevated button is pressed long');
              },
              child: const Text('Elevated button is pressed'),
              style: ElevatedButton.styleFrom(
                // 2) 색도 primary로 마찬가지
                primary: Colors.orangeAccent,
                // 3) rounded 코너 대신 shape 로 모양조절가능
                shape: RoundedRectangleBorder(
                  //border의 radius가 크면 아예 알약모양되고 작으면 rounded인 rectangle 됨
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            //OutlinedButton
            OutlinedButton(
              // 마찬가지로 onpressed 함수 통해 누를때 효과 주기
              onPressed: () {
                debugPrint('Outlined Button is pressed');
              },
              onLongPress: () {
                debugPrint('Outlined button is pressed long');
              },
              child: const Text('outlined button'),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                side: const BorderSide(
                  color: Color.fromARGB(255, 65, 156, 69),
                  width: 2.0,
                ),
              ),
            ),

            // row 통해 아이콘이미지랑 text 버튼 만들면 이미지가 안눌림.
            //TextandIconButton
            TextButton.icon(
              onPressed: () {
                debugPrint('TextandIcon Button is pressed');
              },
              onLongPress: () {
                debugPrint('TextandIcon button is pressed long');
              },
              icon: const Icon(
                Icons.home,
              ),
              label: const Text('Go to home with text button'),
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
            ),

            // outline 도 elevate도 outlinebutton.icon 이용하면 이렇게 만들 수 있다.
            //ElevatedandIconButton
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              label: const Text('Go to home with elevated button'),
              style: ElevatedButton.styleFrom(
                //minimumSize에서 const Size는 (가로, 세로폭),
                primary: Colors.black,
                minimumSize: const Size(200, 5),
              ),
            ),

            // outlinedabdIcon button
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              label: const Text('Outlined button with icon'),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                side: const BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
            ),

            // elevated button 과 icon 과 색조정
            ElevatedButton.icon(
              onPressed: null,
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              label: const Text('changing colors of elevated button'),
              style: ElevatedButton.styleFrom(
                //minimumSize에서 const Size는 (가로, 세로폭),
                primary: Colors.blue,
                // onsurface 이용해 색을 덮는다!!!!! 이때, onpressed는 null로 설정해야한다.
                onSurface: Colors.pink,
                minimumSize: const Size(200, 5),
              ),
            ),

            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Textbutton aligned with button bar'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated Button to align'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// NP : CTRO + a로 전체 잡고 CTRL k+f 하면 한번에 정렬