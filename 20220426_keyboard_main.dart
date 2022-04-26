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
      home: const KeyboardMaking(),
    );
  }
}

class KeyboardMaking extends StatefulWidget {
  const KeyboardMaking({Key? key}) : super(key: key);

  @override
  State<KeyboardMaking> createState() => _KeyboardMakingState();
}

class _KeyboardMakingState extends State<KeyboardMaking> {
  //1. 변수선언
  // 키보드 변수 선언. 변수 타입형이 애초에 text editing controller 임 우항은 개발자 재량
  late TextEditingController textEditingController;
  //사용자 입력받을 변수 선ㅅ언
  late String inputValue;

//2. 초기화
  //재량함수 initState () + 내장함수 super. initState
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

//3. 구현
  @override
  Widget build(BuildContext context) {
    // 3-5) 아무데나 누르면 키보드 사라지는거.
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Single'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //3-1) 키보드
                TextField(
                    controller: textEditingController,
                    decoration: const InputDecoration(
                      labelText: '이곳에 커서클릭시 키보드 나타남',
                    ),
                    keyboardType: TextInputType.text),

                // 3-2) 제출 버튼 만들기
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      onPressed: () {
                        // trim : 입력된 글자 기준 앞뒤 스페이스 지우기
                        if (textEditingController.text.trim().isEmpty) {
                          errorSnackBar(context);
                        } else {
                          inputValue = textEditingController.text;
                          showSnackBar(context);
                        }
                      },
                      child: const Text('제출')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//4. 오류 조정 함수
  errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('아무것도 입력되지 않았거나 space만 눌리고 제출된 상태입니다'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }

// 5. 사용자 입력 결과 팝업으로 띄우는 함수
  showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("입력글자는 '$inputValue' 입니다"),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.green[800],
      ),
    );
  }
}
