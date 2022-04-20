import 'package:flutter/material.dart';

class Receivedmail extends StatelessWidget {
  const Receivedmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Received Mail'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('강아지가 받은 메일'),
            Text('고양이가 받은 메일'),
            Text('토끼가 받은 메일'),
          ],
        ),
      ),
    );
  }
}
