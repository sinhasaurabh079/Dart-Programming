import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Hello'),
      ),
     // iss widget ki help se containers automatic adjust ho jayenge in case of any pixel overflow error
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          //direction: Axis.horizontal,
          direction: Axis.vertical,
          // spacing and runSpacing is used to set padding between containers in Wrap Widget
          spacing: 11,
          runSpacing: 11,
          children: [
            Container(
              margin: EdgeInsets.only(right: 11),
              height: 200,
              width: 200,
              color: Colors.amber[500],
            ),
            Container(
              margin: EdgeInsets.only(right: 11),
              height: 200,
              width: 200,
              color: Colors.blue[500],
            ),
            Container(
              margin: EdgeInsets.only(right: 11),
              height: 200,
              width: 200,
              color: Colors.green[500],
            ),
            Container(
              margin: EdgeInsets.only(right: 11),
              height: 200,
              width: 200,
              color: Colors.pink[500],
            ),
            Container(
              margin: EdgeInsets.only(right: 11),
              height: 200,
              width: 200,
              color: Colors.purple[500],
            ),
            Container(
              margin: EdgeInsets.only(right: 11),
              height: 200,
              width: 200,
              color: Colors.lightBlue[500],
            ),
            Container(
              margin: EdgeInsets.only(right: 11),
              height: 200,
              width: 200,
              color: Colors.cyanAccent[500],
            ),
          ],
        ),
      ),
    );
  }
}
