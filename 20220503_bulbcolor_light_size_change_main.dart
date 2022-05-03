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
        primaryColor: const Color.fromARGB(255, 224, 181, 178),
      ),
      home: const Warningbulb(),
    );
  }
}

class Warningbulb extends StatefulWidget {
  const Warningbulb({Key? key}) : super(key: key);

  @override
  State<Warningbulb> createState() => _WarningbulbState();
}

class _WarningbulbState extends State<Warningbulb> {
  //1. make state

  late String _bulbimage;
  late String _button1;
  late String _button2;
  late String _button3;

  late double _bulbwidth;
  late double _bulbheight;

  late bool _colorstatus;
  late bool _sizestatus;
  late bool _lightstatus;

  //2. initialize every states
  @override
  void initState() {
    super.initState();
    //2-1) embeded image and button
    _bulbimage = 'images3/lamp_off.png';
    _button1 = 'Color';
    _button2 = 'Size';
    _button3 = 'State';

    //2-2) size
    _bulbwidth = 100;
    _bulbheight = 250;

    //2-3) status
    //yellow == false
    _colorstatus = false;
    //small == false
    _sizestatus = false;
    //light off == false
    _lightstatus = false;
  }

  //3. main
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warning bulb'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 248, 173, 167),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //3-1) bulb image
            Image.asset(
              _bulbimage,
              width: _bulbwidth,
              height: _bulbheight,
            ),
            //3-2) Row of three buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //(1) color
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_button1),
                    Switch(
                      value: _colorstatus,
                      onChanged: (value) {
                        setState(() {
                          _colorstatus = value;
                          myChangeColor();
                        });
                      },
                    ),
                  ],
                ),
                //2-2) size
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_button2),
                    Switch(
                      value: _sizestatus,
                      onChanged: (value) {
                        setState(() {
                          _sizestatus = value;
                          myChangeSize();
                        });
                      },
                    ),
                  ],
                ),
                //2-3) state turn on off
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_button3),
                    Switch(
                      value: _lightstatus,
                      onChanged: (value) {
                        setState(() {
                          _lightstatus = value;
                          myChangeLight();
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  myChangeColor() {
    //only if light on && colored == red, if not (ligth off & colored == off)
    if (_colorstatus) {
      _colorstatus = false;
      if (_lightstatus) {
        _bulbimage = 'images3/lamp_off.png';
      } else {
        _bulbimage = 'images3/lamp_red.png';
      }
    } else {
      _colorstatus = true;
      if (_lightstatus) {
        _bulbimage = 'images3/lamp_off.png';
      } else {
        _bulbimage = 'images3/lamp_off.png';
      }
    }
  }

  myChangeSize() {
    if (_sizestatus) {
      _sizestatus = false;
      _bulbheight = 200;
      _bulbwidth = 100;
    }
    //sizestatus == false, small
    else {
      _sizestatus = true;
      _bulbheight = 500;
      _bulbwidth = 200;
    }
  }

  myChangeLight() {
    //redcolor + yellowcolor : error, off
    if (_colorstatus && _lightstatus) {
      _lightstatus = false;
      _bulbimage = 'images3/lamp_off.png';
    } else {
      //only yellow
      if (_lightstatus) {
        _lightstatus = false;
        _bulbimage = 'images3/lamp_on.png';
      } else {
        _lightstatus = true;
        _bulbimage = 'images3/lamp_off.png';
      }
    }
  }
}
