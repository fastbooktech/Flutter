import 'package:flutter/material.dart';
import 'package:listview1/model/message.dart';
import 'package:listview1/model/todo_list.dart';
import 'package:listview1/view/detail_list.dart';

class TableList extends StatefulWidget {
  const TableList({Key? key}) : super(key: key);

  @override
  State<TableList> createState() => _TableListState();
}

class _TableListState extends State<TableList> {
  //todolist 구조체에서 선언한 친구 불러옴. 모델 디렉토리가 변수들 모음집임

  //1. 변수
  List<TodoList> todoList = [];

  //2. 초기화
  @override
  void initState() {
    super.initState();
    //구조ㅓ체에서   TodoList({required this.imagePath, required this.workList}); 로 정의했어서 파라미터 두개 필요
    todoList.add(TodoList(
      imagePath: 'images/profesor.jpg',
      workList: '교수, PROFESOR',
      informList:
          '강도단의 리더이자 브레인. 스페인 조폐국 강도를 기획한 인물이다. 12일 동안 조폐국을 점거해 24억 유로를 직접 찍어내려는 계획을 세우며, 인질과 경찰 모두 사상자를 최소화하는 원칙을 만들어 여론의 지지까지 얻으려는 모습을 보인다.',
    ));
    todoList.add(TodoList(
      imagePath: 'images/tokyo.jpg',
      workList: '도쿄, TOKYO',
      informList:
          '작중 나레이션을 하는 화자이다. 교수가 베를린에 이어 조폐국 내의 2인자, 행동대장 역할을 맡겼을 정도로 뛰어난 무력과 과감한 행동력을 갖췄지만, 성격적 결함 탓에 이런 장점마저 단점으로 작용하게 된다.',
    ));
    todoList.add(TodoList(
      imagePath: 'images/lisboa.jpg',
      workList: '경감, LISBOA',
      informList:
          '시즌 1에서는 조폐국 강도 당시 협상팀을 이끌며 교수와 교섭을 담당했었다. 이후 교수의 정체를 알게 되고 시즌 3부터는 교수의 조력자가 되어 리스본(Lisboa, 리스보아)이란 코드네임으로 교수와 함께 스페인 외곽을 돌아다니며 팀을 지휘한다.',
    ));
    todoList.add(TodoList(
      imagePath: 'images/denver.jpg',
      workList: '덴버, DENVER',
      informList:
          '전투 및 인질 제어 담당. 모스크바의 아들. 길거리 마약상으로 조직의 마약을 잃어버린 후 더 잃을 것도 없는 상황에서 아버지와 함께 교수의 팀에 합류했다. 감옥에 들락거리던 아버지 덕에 길거리에서 거칠게 자란 다혈질 일자무식으로 거친 입담과 싸움실력을 자랑한다.초기에는 팀의 민폐가 될 것 같은 캐릭터였지만 의외로 제대로 된 사고 방식을 가진 인물이다.',
    ));
    todoList.add(TodoList(
      imagePath: 'images/rio.jpg',
      workList: '리오, RIO',
      informList:
          '컴퓨터와 통신 관련 담당. 전직 해커로 컴퓨터와 통신 분야는 뛰어나지만, 팀의 막내여서 그런가 범죄자로서는 허술한 편. 라켈 경감 역시 이 조직의 가장 약한 고리라면서 배신을 유도할 정도이다. 나이도 다른 멤버들에 비해 어린데다 본인만 범죄자지 부모는 평범해서 경찰에서 부모를 언급하자 많이 흔들리는 모습을 보여준다.',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 96,
        backgroundColor: Colors.black,
        title: const Text(
          '등장인물 프로필',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        //앱바의 plus 누르면 새 타일 주가되도록.
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/insert').then((value) => null);
            },
            icon: const Icon(Icons.add_outlined),
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
            itemCount: todoList.length,
            // position 몇번째 위치인지 반환
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 12, 8, 0),
                child: GestureDetector(
                  onTap: () {
                    //카드 클릭 시 해당하는 곳으로 이동
                    Message.workList = todoList[position].workList;
                    Message.imagePath = todoList[position].imagePath;
                    Message.informList = todoList[position].informList;

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const DetailList();
                    }));
                  },
                  child: Card(
                    //card 처럼 event 기능 없는 위젯도 gesture dectector로 애니메이팅 가능
                    //tile 같은 카드는 height, size 별도 조정불가라 sizedbox 사용
                    //color: Colors.black26,
                    color: position % 2 == 0 ? Colors.black26 : Colors.black12,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.asset(todoList[position].imagePath)),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          todoList[position].workList,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  rebuildData() {
    setState(() {
      if (Message.action) {
        todoList.add(TodoList(
            imagePath: Message.imagePath,
            workList: Message.workList,
            informList: Message.informList));
        Message.action = false;
      }
    });
  }
}
