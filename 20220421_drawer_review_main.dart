import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('앱바 부분'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // ---
            },
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              // ---
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const Center(
        child: Text(''),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('images/main.png'),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/freeicon.jpg'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/lalala.jpg'),
                )
              ],
              accountName: const Text('Pikachu'),
              accountEmail: const Text('pikachu@naver.com'),
              decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
            ),

            // 첫번째 Tile
            ListTile(
              // 홈 아이콘 + 글자 home
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text('Home'),
              onTap: () {
                debugPrint('Home is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            // 두번째 Tile
            ListTile(
              // 설정 아이콘 + 글자 설정
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text('설정'),
              onTap: () {
                debugPrint('설정 is clicked');
              },
              // trailing: const Icon(Icons.add),
            ),
            // 세번째 Tile
            ListTile(
              // 설정 아이콘 + 글자 설정
              leading: const Icon(
                Icons.question_answer,
                color: Colors.red,
              ),
              title: const Text('자주 묻는 질문'),
              onTap: () {
                debugPrint('질의응답 is clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}
