import 'package:flutter/material.dart';

class Twobuttons extends StatelessWidget {
  const Twobuttons({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mail'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              onPressed: () {
                debugPrint('아이콘으로 보낸편지함 눌림');
                Navigator.pushNamed(context, '/bonam');
              },
              icon: const Icon(Icons.mail),
            ),
            IconButton(
              onPressed: () {},
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
                    debugPrint('버튼으로 보낸편지함눌림');
                    Navigator.pushNamed(context, '/bonam');
                  },
                  child: const Text('보낸편지하암')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    debugPrint('badum눌림');
                  },
                  child: const Text('받는편지하암')),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              // header
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/main.png'),
                ),
                accountName: Text('Smiler'),
                accountEmail: Text('smile@gmail.com'),
              ),

              // tile
              ListTile(
                leading: Icon(Icons.mail_outline_outlined, color: Colors.green),
                title: Text('보낸 편지하암으로 가기'),
              ),

              ListTile(
                leading: Icon(Icons.mail_outline_outlined, color: Colors.red),
                title: Text('받은 편지하암으로 가기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
