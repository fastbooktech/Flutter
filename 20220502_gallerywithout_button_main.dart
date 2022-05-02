import 'dart:async';

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
  late List imageFile;
  late int currentPage;

  //2. init
  @override
  void initState(){
    super.initState();
    imageFile = ['flower_01.png','flower_02.png','flower_03.png','flower_04.png','flower_05.png','flower_06.png',];
    currentPage =0;

    //timer installation
    Timer.periodic(const Duration(seconds: 5), (Timer timer){
      nextButton();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title :const Text('5초마다 이미지 반복 무한으로 진행d'),
        backgroundColor: Colors.lime,
        centerTitle: true,
      ),

      body : Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                imageFile[currentPage],
                style : const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize : 20,
                ),
                ),
                Image.asset(
                  'images/${imageFile[currentPage]}',
                  width : 400,
                  height : 600,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                        // prevButton();
                          
                        });
                      }, 
                      child: const Text('<<이전'),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                     //    nextButton();
                        });
                      }, 
                      child: const Text('다음>>'),
                    ),                 
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
  nextButton(){
    setState(() {
      currentPage++;
      if(currentPage >= imageFile.length){
        currentPage = 0;
      }      
    });
    

  }
//   prevButton(){
//     currentPage--;
//     if(currentPage <0){
//       currentPage = imageFile.length -1;
//     }
//   } 
// }

}