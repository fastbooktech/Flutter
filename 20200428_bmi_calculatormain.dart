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
  //1. variables

  late TextEditingController input1;
  late TextEditingController input2;
  late double sum;
  late String sentence;
  var num = ['hight fast', 'fast', 'chubby', 'normal', 'thin'];

// 1-2) image
  late String bmiurl;

  //2. initialization
  @override
  void initState() {
    super.initState();

    input1 = TextEditingController();
    input2 = TextEditingController();
    sum = 0;

    sentence = "";

    bmiurl = "bmi_images/bmi.png";
  }

//3. main
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: input1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        labelText: 'Enter your height (: cm)'),
                  ),
                  TextField(
                    controller: input2,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        labelText: 'Enter your weight (: kg)'),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                    onPressed: () {
                      onCheck();
                    },
                    child: const Text('RESULT'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      sentence,
                      style: const TextStyle(
                        color: Colors.brown,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.asset(bmiurl),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onCheck() {
    setState(() {
      String result;
      String a;
      sum = double.parse(input2.text) /
          (((double.parse(input1.text)) / 100) *
              ((double.parse(input1.text)) / 100));

      if (sum >= 30) {
        bmiurl = 'bmi_images/risk.png';

        result = 'too fat';
        a = sum.toStringAsFixed(2);
        sentence = 'Your BMI is $a \n\nYour state is $result';
      } else if (sum >= 25) {
        bmiurl = 'bmi_images/obese.png';

        result = 'fat';
        a = sum.toStringAsFixed(2);
        sentence = 'Your BMI is $a \n\nYour state is $result';
      } else if (sum >= 23) {
        bmiurl = 'bmi_images/overweight.png';

        result = 'chubby';
        a = sum.toStringAsFixed(2);
        sentence = 'Your BMI is $a \n\nYour state is $result';
      } else if (sum >= 18.5) {
        bmiurl = 'bmi_images/normal.png';

        result = 'normal';
        a = sum.toStringAsFixed(2);
        sentence = 'Your BMI is $a \n\nYour state is $result';
      } else {
        bmiurl = 'bmi_images/underweight.png';

        result = 'thin';
        a = sum.toStringAsFixed(2);
        sentence = 'Your BMI is $a \n\nYour state is $result';
      }
    });
  }
}
