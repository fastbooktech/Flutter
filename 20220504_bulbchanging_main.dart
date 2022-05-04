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
      home: const Mybulb(),
    );
  }
}

class Mybulb extends StatefulWidget {
  const Mybulb({Key? key}) : super(key: key);

  @override
  State<Mybulb> createState() => _MybulbState();
}

class _MybulbState extends State<Mybulb> {
  //1. variable
  late String _imageUrl;
  late String _alertTitle;
  late String _alertSentence;
  late bool _turnOn;
  late bool _turnOff;

  //2. initialization
  @override
  void initState() {
    super.initState();
    _imageUrl = 'images/lamp_off.png';
    _alertTitle = '';
    _alertSentence = '';
    _turnOn = false;
    _turnOff = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert 이용 메시지 출력'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image
            SizedBox(
              width: 230,
              height: 300,
              child: Image.asset(_imageUrl),
            ),
            const SizedBox(
              height: 60,
            ),
            //row buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //light on
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        controlTurnon();
                      });
                    },
                    child: const Text('켜기')),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        controlTurnoff();
                      });
                    },
                    child: const Text('끄기')),
                //light off
              ],
            ),
          ],
        ),
      ),
    );
  }

  controlTurnon() {
    if (_turnOn) {
      //켜진 전구 켜기니까
      _alertTitle = '경고';
      _alertSentence = '현재 램프가 켜진 상태입니다';
      dialog1();
    } else {
      //꺼진전구 켜기니까
      _alertTitle = '램프켜기';
      _alertSentence = '램프를 켜시겠습니까?';
      dialogTurnOn();
    }
  }

  controlTurnoff() {
    if (_turnOff) {
      //꺼진 전구에서 끄기 눌렀으니까
      //_alertSentence : 현재 램프가 꺼진상태
      _alertTitle = '경고';
      _alertSentence = '현재 램프가 꺼진 상태입니다';
      //알림창불러오기
      dialog1();
    } else {
      //켜진 전구에서 끄기 누른거니까
      _alertTitle = '램프끄기';
      _alertSentence = '램프를 끄시겠습니까';
      //알림창불러오기
      dialogTurnOFF();
    }
  }

  dialog1() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(_alertTitle),
            content: Text(_alertSentence),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Center(
                    child: Text(
                  '네 알겠습니다.',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                )),
              ),
            ],
          );
        });
  }

  dialogTurnOn() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(_alertTitle),
            content: Text(_alertSentence),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _imageUrl = 'images/lamp_on.png';
                        _turnOn = true;
                        _turnOff = false;
                        Navigator.pop(context);
                      });
                    },
                    child: const Center(
                        child: Text(
                      '네',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Center(
                        child: Text(
                      '아니요',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )),
                  ),
                ],
              ),
            ],
          );
        });
  }

  dialogTurnOFF() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(_alertTitle),
            content: Text(_alertSentence),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _imageUrl = 'images/lamp_off.png';
                        _turnOn = false;
                        _turnOff = true;
                        Navigator.pop(context);
                      });
                    },
                    child: const Center(
                        child: Text(
                      '네',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Center(
                        child: Text(
                      '아니요',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )),
                  ),
                ],
              ),
            ],
          );
        });
  }
}
