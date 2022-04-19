// stl로 탭해서 먼저 위젯 만든 후
//전구 우클릭으로 material 불러오기
import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //main에서 body 옆에 있던 center () 전체 블록을 다 복붙하고, 콤마만 세미콜론으로 ㅇㅇ
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // 아래에서 함수로 해당 pressed를 정의
              // function
              snackBarFunction(context);
            },
            child: const Text(
              'Snackbar Button1',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              snackBarFunction2(context);
            },
            child: const Text('Snackbar Button2'),
          ),
        ],
      ),
      // child: ElevatedButton(
      //   onPressed: () {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       const SnackBar(
      //         content: Text('ElevatedButton is clicked'),]
      //         duration: Duration(seconds: 5,),
      //       ),
      //     );
      //   },
      //   child: const Text('Snackbar Button'),
      // ),
    );
  }
}

// build 함수의 파라미터 context를 사용

snackBarFunction(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      backgroundColor: Colors.pink,
      content: Text('ElevatedButton is clicked'),
      duration: Duration(
        seconds: 5,
      ),
    ),
  );
}

snackBarFunction2(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('ElevatedButton2 is clicked'),
      duration: Duration(
        seconds: 5,
      ),
    ),
  );
}
