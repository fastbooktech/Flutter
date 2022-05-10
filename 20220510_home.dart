import 'package:animal_listview/model/animal.dart';
//import 'package:animal_listview/model/init.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //1. make list variable to save animals
  List<Animal> animalList = [];

  //2. initialization
  @override
  void initState() {
    super.initState();
    animalList.add(Animal(
        imagePath: 'images/bee.png',
        animalName: 'bee',
        kind: 'insect',
        flyExist: false));
    animalList.add(Animal(
        imagePath: 'images/cat.png',
        animalName: 'cat',
        kind: 'poyou',
        flyExist: false));
    animalList.add(Animal(
        imagePath: 'images/cow.png',
        animalName: 'cow',
        kind: 'poyou',
        flyExist: false));
    animalList.add(Animal(
        imagePath: 'images/dog.png',
        animalName: 'dog',
        kind: 'poyou',
        flyExist: false));
    animalList.add(Animal(
        imagePath: 'images/fox.png',
        animalName: 'fox',
        kind: 'poyou',
        flyExist: false));
    animalList.add(Animal(
        imagePath: 'images/monkey.png',
        animalName: 'monkey',
        kind: 'chimpan',
        flyExist: false));
    animalList.add(Animal(
        imagePath: 'images/pig.png',
        animalName: 'pig',
        kind: 'poyou',
        flyExist: false));
    animalList.add(Animal(
        imagePath: 'images/wolf.png',
        animalName: 'wolf',
        kind: 'poyou',
        flyExist: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animal list home'),
        ),
        //listviewe builder 위에 thumbnail 그림추가 or 제목을 쓸 수는 없나 appbar 밑에.
        body: Center(
          child: ListView.builder(
            itemCount: animalList.length,
            itemBuilder: (context, position) {
              // card first, then gesture detector (onTap + child)
              return GestureDetector(
                onTap: () {
                  _showDialog(
                    context,
                    animalList[position].imagePath,
                    animalList[position].animalName,
                    animalList[position].kind,
                    animalList[position].flyExist,
                  );
                  //MessageInit.imagePath = animalList[position].imagePath;
                  //MessageInit.animalName = animalList[position].animalName;
                  //MessageInit.kind = animalList[position].kind;
                  //MessageInit.flyExist = animalList[position].flyExist;

                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return const DetailList();
                  // }));
                },
                child: Card(
                  child: Row(
                    children: [
                      Image.asset(
                        animalList[position].imagePath,
                        height: 100,
                        width: 60,
                      ),
                      Text("   " + animalList[position].animalName)
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }

  //outside fo scaffold but only once brace had to be left
  _showDialog(BuildContext context, String imagePath, String animalName,
      String kind, bool fly) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(animalName),
            content: Text(
                "this animal is $kind of the animal. \n It is ${fly ? 'able to fly' : 'unable to fly'}"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('End'))
            ],
          );
        });
  }
}
