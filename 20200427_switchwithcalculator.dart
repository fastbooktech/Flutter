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
  //1. 변수 선언 숫자키보드
  //1-1) input
  late TextEditingController value1;
  late TextEditingController value2;
  // late int sum;
  // //출력할멘트
  // late String sentence;
  // //오류 컨트롤할 변수
  // late TextEditingController textEditingController;

  //1-2) 사칙연산 결과 변수
  late TextEditingController plusresult;
  late TextEditingController minusresult;
  late TextEditingController timeresult;
  late TextEditingController divideresult;

  //1-3) switch
  // late bool switchValue;
  late bool addSwitch;
  late bool subSwitch;
  late bool mulSwitch;
  late bool divSwitch;

  late bool switchValue;
  //1-4) switch 값 보관하기 위해서!!
  var addSwitchPreserve = " ";
  var mulSwitchPreserve = " ";
  var subSwitchPreserve = " ";
  var divSwitchPreserve = " ";

  //2. 초기화. 함수 사용시 꼭 override
  @override
  void initState() {
    super.initState();
    //2-1) value 1이랑 2는 사용자가 입력한 값을 text 편집통제기가 제공해줄거야!
    value1 = TextEditingController();
    value2 = TextEditingController();

    //2-2) 사칙연산변수
    plusresult = TextEditingController();
    minusresult = TextEditingController();
    timeresult = TextEditingController();
    divideresult = TextEditingController();

    //2-3)switch
    switchValue = false;
    addSwitch = true;
    subSwitch = true;
    mulSwitch = true;
    divSwitch = true;
    //문장초기화
//    sentence = "";
    //오류핸들링
    // textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    //전체는 geturedetector로 기종관련없이 위젯으로 묶어 gesturedetector로 아무데나 누르면 종료

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('간단한 계산기'),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: ListView(
//                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //숫자키보드1
                  TextField(
                    //controller가 받은 수는 value1에다 저장할거야!
                    controller: value1,
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(labelText: '첫번째 숫자를 입력하세요'),
                  ),
                  //두 키보드 사이 공백
                  const SizedBox(
                    height: 20,
                  ),
                  //숫자키보드2
                  TextField(
                    //controller가 받은 수는 value2에다 저장할거야!
                    controller: value2,
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(labelText: '두번째 숫자를 입력하세요'),
                  ),

                  //버튼 1 계산하기 + 버튼 2 지우기
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if ((value1.text.trim().isEmpty) ||
                              (value2.text.trim().isEmpty)) {
                            errorSnackBar(context);
                          } else {
                            calCheck();
                          }
                        },
                        child: const Text('계산하기'),
                      ),
                      const SizedBox(
                        height: 80,
                        width: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //지우는 함수
                          removeResult();
                        },
                        child: const Text('지우기'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('덧셈 : '),
                      Switch(
                          value: addSwitch,
                          onChanged: (value) {
                            if (value == false) {
                              setState(() {
                                addSwitchPreserve = plusresult.text;
                                plusresult.text = "";
                                addSwitch = value;
                              });
                            } else {
                              plusresult.text = addSwitchPreserve;
                              addSwitch = value;
                            }
                            //사용자지정함수
                            //changeSwitch(value);
                          }),
                      const Text('뺄셈 : '),
                      Switch(
                          value: subSwitch,
                          onChanged: (value) {
                            if (value == false) {
                              setState(() {
                                subSwitchPreserve = minusresult.text;
                                minusresult.text = "";
                                subSwitch = value;
                              });
                            } else {
                              minusresult.text = subSwitchPreserve;
                              subSwitch = value;
                            }
                            //사용자지정함수
                            //changeSwitch(value);
                          }),
                      const Text('곱셈 : '),
                      Switch(
                          value: mulSwitch,
                          onChanged: (value) {
                            if (value == false) {
                              setState(() {
                                mulSwitchPreserve = timeresult.text;
                                timeresult.text = "";
                                mulSwitch = value;
                              });
                            } else {
                              timeresult.text = mulSwitchPreserve;
                              mulSwitch = value;
                            }
                            //사용자지정함수
                            //changeSwitch(value);
                          }),
                      const Text('나눗셈 : '),
                      Switch(
                          value: divSwitch,
                          onChanged: (value) {
                            if (value == false) {
                              setState(() {
                                divSwitchPreserve = divideresult.text;
                                divideresult.text = "";
                                divSwitch = value;
                              });
                            } else {
                              divideresult.text = divSwitchPreserve;
                              divSwitch = value;
                            }
                            //사용자지정함수
                            //changeSwitch(value);
                          }),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //사칙연산 결과
                      //(1) 덧셈결과
                      //주의 : 클릭시 키보드 안나오게해야함. readOnly 사용. 그래야 사용자가 못바꿈
                      TextField(
                        //controller가 받은 수는 value1에다 저장할거야!
                        controller: plusresult,
                        // 얘 있으면 키보드 올라가는데 readOnly로 어차피 못쓰니 있을필요 없는코드
                        // keyboardType: TextInputType.number,
                        decoration: const InputDecoration(labelText: '덧셈 결과'),
                        readOnly: true,
                      ),
                      //(2) 뺄셈결과
                      TextField(
                        //controller가 받은 수는 value1에다 저장할거야!
                        controller: minusresult,
                        decoration: const InputDecoration(labelText: '뺄셈 결과'),
                        readOnly: true,
                      ),
                      //(3) 곱셈결과
                      TextField(
                        //controller가 받은 수는 value1에다 저장할거야!
                        controller: timeresult,
                        decoration: const InputDecoration(labelText: '곱셈 결과'),
                        readOnly: true,
                      ),
                      //(4) 나눗셈결과
                      TextField(
                        //controller가 받은 수는 value1에다 저장할거야!
                        controller: divideresult,
                        decoration: const InputDecoration(labelText: '나눗셈 결과'),
                        readOnly: true,
                      ),
                    ],
                  ),

                  // 텍스트 sentence 변수로 대체할 때 style 통해서 간격 어중이 떠중이로조정하더라도 잘되면 그만  ㅋ
                  //이번 기능 구현에서 필요 없음
                  // Text(sentence,
                  //     style: const TextStyle(
                  //       color: Colors.red,
                  //       //fontsize: 20,
                  //       fontWeight: FontWeight.bold,
                  //     )),
                ],
              ),
            ),
          )),
    );
  }

  changeSwitch(bool value) {
    setState(() {
      if (switchValue == true) {
        switchValue = false;
      } else {
        switchValue = true;
      }
    });
  }

  calCheck() {
    int plus = int.parse(value1.text) + int.parse(value2.text);
    int minus = int.parse(value1.text) - int.parse(value2.text);
    int time = int.parse(value1.text) * int.parse(value2.text);
    double divide = int.parse(value1.text) / (int.parse(value2.text));
// 왜 ~/로 나눗셈 배웠는데 / 지 ?? 질문.

    plusresult.text = plus.toString();
    minusresult.text = minus.toString();
    timeresult.text = time.toString();
    divideresult.text = divide.toString();
  }

  errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('아무것도 입력되지 않았습니다.'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }

  errorSnackBar2(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('이미 다 지워짐'),
        duration: Duration(seconds: 2),
        backgroundColor: Color.fromARGB(255, 212, 171, 168),
      ),
    );
  }

  removeResult() {
    setState(() {
      value1.text = "";
      value2.text = "";
      plusresult.text = "";
      minusresult.text = "";
      timeresult.text = "";
      divideresult.text = "";
    });
  }

  // calCheck() {
  //   //오류
  //   if ((value1.text.trim().isEmpty) || (value2.text.trim().isEmpty)) {
  //     setState(() {
  //       //오류조정
  //       sentence = "";
  //     });
  //     errorSnackBar(context);
  //   } else {
  //     sum = int.parse(value1.text) + int.parse(value2.text);
  //     plus = int.parse(value1.text) + int.parse(value2.text);
  //     minus = int.parse(value1.text) - int.parse(value2.text);
  //     time = int.parse(value1.text) * int.parse(value2.text);
  //     divide = int.parse(value1.text) ~/ int.parse(value2.text);

  //     //눌렀을 때 값 업데이트, 덧셈 진행
  //     setState(() {
  //       sentence = "입력값은 $sum 이 합임";
  //       // plusresult =
  //       // minusresult =
  //       // timeresult =
  //       // divideresult =
  //     });
  //   }
  // }
}
