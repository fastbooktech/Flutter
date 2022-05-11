import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //1. text variable
  late TextEditingController value1;
  late TextEditingController value2;
  late String id1;
  late String password1;

  //2. initialization
  @override
  void initState() {
    super.initState();
    value1 = TextEditingController();
    value2 = TextEditingController();
    id1 = "";
    password1 = "";
  }

  //3. main
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Log in'),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  //how to fix the location of image?
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image.asset(
                      'images/login.png',
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),

                //text
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    controller: value1,
                    decoration:
                        const InputDecoration(labelText: '사용자 ID를 입력하세요'),
                    keyboardType: TextInputType.text,
                    onChanged: (text) {
                      setState(() {
                        id1 = text;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
                  child: TextField(
                    controller: value2,
                    decoration: const InputDecoration(labelText: '패스워드를 입력하세요'),
                    onChanged: (text) {
                      setState(() {
                        password1 = text;
                      });
                    },
                  ),
                ),

                //button
                ElevatedButton(
                    onPressed: () {
                      if ((id1 == "") && (password1 == "")) {
                        errorSnackBar(context);
                      } else if ((id1 != 'root') || (password1 != 'qwer1234')) {
                        showSnackBar(context);
                      }
                    },
                    child: const Text('Log in')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('사용자ID와 암호를 입력하세요'),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.red,
    ));
  }

  showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('사용자 id나 암호가 맞지 않습니다.'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    ));
  }
}
