import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                ),
                onPressed: () {
                  //함수는 호출시에도 세미콜론 근데 정의할 땐 아님
                  whenPressed(context);
                  Navigator.pop(context);
                },
                child: const Text('You can go back to previous page'),
                // style: ElevatedButton.styleFrom(
                //   primary: Colors.redAccent,
                // ),
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
      content: Text('Here is Second button'),
      duration: Duration(
        seconds: 5,
      ),
    ),
  );
}
