import 'package:flutter/material.dart';
import 'package:listview1/view/insert_list.dart';
import 'package:listview1/view/table_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      //map으로 되어있고, string, widget function을 갖는다
      routes: {
        //'/' : (context) => TableList() 얘랑 (context) {return} 이랑 같음
        //시작페이지. 기준점. root페이지.
        '/': (context) => const TableList(),
        //다음페이지
        '/insert': (context) {
          //여기에 다른 코드들 다 쓰고
          return const InsertList();
        }
      },
    );
  }
}

//page 두개이므로 router 사용. 둘다써도 되는데 이번엔 하나만 쓸 예정.