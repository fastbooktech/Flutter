import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator_AppBar'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Sendmail_router');
            },
            icon: const Icon(Icons.mail),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Receivedmail_router');
            },
            icon: const Icon(Icons.mail_outline_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/Sendmail_router');
              },
              child: const Text('보낸 편지함'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/Receivedmail_router');
              },
              child: const Text('받은 편지함'),
            ),
          ],
        ),
      ),
    );
  }
}
