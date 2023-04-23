import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning/screens/contentScreen.dart';
import 'package:learning/screens/splashscreen.dart';
import 'package:learning/ui_helper/widgets/custom-text.dart';

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
  // box dimension
  var _width = 200.0;
  var _height = 100.0;

  // to change colour of rectangle when dim is changed
  Color bgColor = Colors.blueGrey;

  // to toggle rectangle box
  bool flag = true;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(21),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Foo Animations'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 2),
                decoration: myDecor,
                width: _width,
                height: _height,
                // to change speed of animation and add some variations
                curve: Curves.bounceInOut,
              ),
              ElevatedButton(
                  onPressed: () {
                    // har click pr dimension change hogi 
                    setState(() {
                      if (flag) {
                        _width = 100.0;
                        _height = 200.0;
                        myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.orange,
                        );
                        flag = false;
                      } else {
                        _width = 200.0;
                        _height = 100.0;
                        myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.blueGrey,
                        );
                        flag = true;
                      }
                    });
                  },
                  child: Text('Animate'))
            ],
          ),
        ));
  }
}
