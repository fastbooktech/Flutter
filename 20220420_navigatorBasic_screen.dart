import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                // 이때 버튼색은 요소의 상태를 지정하는것이므로 material state property
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                debugPrint('1번버튼이 눌림');
                Navigator.pushNamed(context, '/1st');
              },
              child: const Text('Go to the Screen1st'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                // 이때 버튼색은 요소의 상태를 지정하는것이므로 material state property
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                debugPrint('2번버튼이 눌림');
                Navigator.pushNamed(context, '/2nd');
              },
              child: const Text('Go to the Screen2nd'),
            ),
          ],
        ),
      ),
    );
  }
}
