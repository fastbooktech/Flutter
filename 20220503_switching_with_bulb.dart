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
        primarySwatch: Colors.lime,
      ),
      home: const Mainbulb(),
    );
  }
}

class Mainbulb extends StatefulWidget {
  const Mainbulb({Key? key}) : super(key: key);

  @override
  State<Mainbulb> createState() => _MainbulbState();
}

class _MainbulbState extends State<Mainbulb> {
  //remember that every state should be defined already to update changes

  //1. state
  late String _imageurl;
  late String _buttonname;
  late String _buttonname2;
  late double _imagewidth;
  late double _imageheight;

  //1) small or big
  late bool _sizestatus;
  // 2) light on or off
  late bool _lightstatus;

  //2. initialization
  @override
  void initState() {
    super.initState();
    _imageurl = 'images2/lamp_on.png';
    //bulb image with lighted on
    _lightstatus = true;

    _imagewidth = 124;
    _imageheight = 256;
    //small with 124 : 256 = true
    _sizestatus = true;

    _buttonname = '1. magnify';
    _buttonname2 = '2. change color';
  }

  //3. main page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Switching Practice with BULB',
          style: TextStyle(
            color: Color.fromARGB(255, 113, 121, 43),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lime[300],
      ),
      body: Center(
        //Total main page
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //1) bulb image
            Image.asset(
              _imageurl,
              width: _imagewidth,
              height: _imageheight,
            ),

            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Switch button to'),
            ),

            //2) button section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // (1) size controlling
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_buttonname),
                    //  using switch
                    Switch(
                      value: _sizestatus,
                      onChanged: (value) {
                        setState(() {
                          _sizestatus = value;
                          mychangeSize();
                        });
                      },
                    ),
                  ],
                ),
                // (2) image changing
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_buttonname2),
                    Switch(
                        value: _lightstatus,
                        onChanged: (value) {
                          setState(() {
                            _lightstatus = value;
                            mychangeImage();
                          });
                        }),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  mychangeSize() {
    // _sizestatus == true
    if (_sizestatus) {
      _imagewidth = 400;
      _imageheight = 600;
      _buttonname = ' Compress';
    } else {
      _imageheight = 256;
      _imagewidth = 124;
      _buttonname = ' Magnify';
    }
  }

  mychangeImage() {
    //true = turn on
    if (_lightstatus) {
      _imageurl = 'images2/lamp_off.png';
      _buttonname2 = ' Turn off';
    } else {
      _imageurl = 'images2/lamp_on.png';
      _buttonname2 = 'Turn on';
    }
  }
}
