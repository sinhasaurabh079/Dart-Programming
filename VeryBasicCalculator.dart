import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Calculation'),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            var sum = no1 + no2;

                            result = "The sum of $no1 and $no2 is $sum.";

                            setState(() {});
                          },
                          child: Text('Add: ')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            var diff = no1 - no2;

                            result =
                                "The difference between $no1 and $no2 is $diff.";
                            setState(() {});
                          },
                          child: Text('Sub: ')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            var times = no1 / no2;

                            result =
                                "The $no1 can be divided by $no2, ${times.toStringAsFixed(2)} times.";
                            setState(() {});
                          },
                          child: Text('Div: ')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            var pdt = no1 * no2;

                            result = "The product of $no1 and $no2 is $pdt.";
                            setState(() {});
                          },
                          child: Text('Mul: ')),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(21),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.cyan,
                    child: Text(
                      result,
                      style: TextStyle(fontSize: 25, color: Colors.amber),
                    ),
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
