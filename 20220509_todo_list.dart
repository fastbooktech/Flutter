//클래스에서 필드, 구성자, 방법 이렇게 3요소

class TodoList {
  //Field
  String imagePath;
  String workList;
  String informList;

  //Constructor
  //구조체? 자기참조인듯.
  //required : 반드시 쓰인다. null safety인가? 암튼 쓸거라고 암시하는 거라사용 안한 상태에서도 오류 X
  TodoList(
      {required this.imagePath,
      required this.workList,
      required this.informList});

  //Method

}
