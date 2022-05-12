//import 'dart:async';

// import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
  //completer : data 받았는지 안받았는지 알려줌
  //1. variable
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  bool isloading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView'),
      ),
      //X축은 ROW, Y축은 COLUMN, Z축 (위로쌓기)은 STACK
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://webtoon.kakao.com/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            onPageFinished: (finish) {
              setState(() {
                isloading = false;
              });
            },
            onPageStarted: (start) {
              setState(() {
                isloading = true;
              });
            },
          ),
          isloading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(),
        ],
      ),

      //web의 floatingactionbutton
      floatingActionButton: FutureBuilder<WebViewController>(
        future: _controller.future,
        builder: (BuildContext context,
            AsyncSnapshot<WebViewController> controller) {
          if (controller.hasData) {
            return FloatingActionButton(
              onPressed: () {
                controller.data!.goBack();
              },
              child: const Icon(Icons.arrow_back),
            );
          }
          return Stack();
        },
      ),
    );
  }
}

//flutter memory 관리
//1. context : alert
//2. snapshot : 한 화면 내에서 화면 구성 ㅗ왔다갔다 할때 메모리 정리. 전에꺼, 다음꺼.
