import 'package:flutter/material.dart';

class Sendmail extends StatelessWidget {
  const Sendmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Mail'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('강아지에게 보낸 메일'),
            Text('고양이에게 보낸 메일'),
            Text('토끼에게 보낸 메일'),
          ],
        ),
      ),
    );
  }
}
