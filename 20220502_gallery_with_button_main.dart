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
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //1. 변수
  late List imageurl;
  int currentpage = 0;

  //2. 초기화
  @override
  void initState(){
    super.initState();
    imageurl = ['images/flower_01.png','images/flower_02.png','images/flower_03.png','images/flower_04.png','images/flower_05.png','images/flower_06.png',];

  }

  //3. main
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('무한이미지반복'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/flower_01.png'),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: (){

                  },
                  child: const Text('<<이전'),
                ),

                ElevatedButton(
                  onPressed: (){

                  },
                  child: const Text('<<이후'),
                ),               

              ],
            ),

          ],
        ),
      ),
    );
  }
}



// class MyHomePage extends StatelessWidget {
//   const MyHomePage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title : const Text('무한이미지반복'),
//         backgroundColor: Colors.red,
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//         itemCount: 3,
//         //itemBuilder: ( context,index){

//         itemBuilder: (c,i){
//           return ListTile(
//             leading : const Icon(Icons.shopping_bag),
//             trailing : const Text('maybe the title', 
//             style : TextStyle(fontSize : 24),),
//             title : Text('the order is $i'),
//           );
//         }
//       ),
//     );
//   }
// }