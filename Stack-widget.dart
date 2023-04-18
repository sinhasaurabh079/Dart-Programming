
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/ui_helper/util.dart';

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
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            subtitle1: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        title: Text('Custom Widget'),
      ),
      // ek widget ko class bna do and jaha uska use krna h usko callBack krlo
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.lightBlue,
            ),
             Positioned(
              left: 21,
              right: 21,
              // bottom: 21,
              // top: 21,
               child: Container(
                width: 150,
                height: 150,
                color: Colors.blueGrey,
                       ),
             ),
             Container(
              width: 100,
              height: 100,
              color: Colors.lightGreen,
            ),
          ],
        ),
      )
    );
  }
}
