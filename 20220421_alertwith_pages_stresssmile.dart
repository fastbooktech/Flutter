import 'package:flutter/material.dart';

class Stresssmile extends StatelessWidget {
  const Stresssmile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How to smile well'),
        backgroundColor: Colors.pink[50],
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Smile like this!'),
            Image.asset('images/main.png'),
          ],
        ),
      ),
    );
  }
}
