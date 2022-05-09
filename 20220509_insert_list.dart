import 'package:flutter/material.dart';
import 'package:listview1/model/message.dart';

class InsertList extends StatefulWidget {
  const InsertList({Key? key}) : super(key: key);

  @override
  State<InsertList> createState() => _InsertListState();
}

class _InsertListState extends State<InsertList> {
  //1. variable
  //TEC 타입으로 tEC 변수만들기
  late TextEditingController textEditingController;

  //2. initialize
  @override
  void initState() {
    super.initState();
    //만든 tEC 변수에 TEC로 받은 입력값 넣기
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 96,
        backgroundColor: Colors.black,
        title: const Text(
          '등장인물 추가하기',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 360,
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  fillColor: Colors.black26,
                  labelText: '새로 추가할 인물을 입력하세요',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black45),
            onPressed: () {
              if (textEditingController.text.trim().isNotEmpty) {
                addList();
              }
              Navigator.pop(context);
            },
            child: const Text('confirm'),
          ),
        ],
      )),
    );
  }

  // 빌딩위젯 밖이어도 class 안에서, 전체 화면 안에서 함수 만들어야지 변수 범위 걱정 안하고 사용가능

  addList() {
    Message.imagePath = 'images/pencil.png';
    Message.workList = textEditingController.text;
    Message.informList = "";
  }
}
