import 'package:flutter/material.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  //함수는 호출시에도 세미콜론 근데 정의할 땐 아님
                  whenPressed(context);
                  // const SecondPage();

                  // paging changing 은 네비게이터로 진행!
                  // router도 써야함
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SecondPage();
                  }));
                },
                child: const Text('If you press, you will see second page'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 함수는 첫글자 오히려 소문자여야
whenPressed(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      backgroundColor: Colors.amber,
      content: Text('Here is first button'),
      duration: Duration(
        seconds: 5,
      ),
    ),
  );
}
