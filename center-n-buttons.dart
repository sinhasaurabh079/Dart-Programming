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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Flutter Container'),
      ),
      // ----------------------------------
      // container with text
      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.limeAccent,
      //     child: Text('Hello Sir'),
      //   ),
      // ),
      // -------------------------
      // center widget
      //   body: Center(
      //     child : Container(
      //       width: 200,
      //       height: 100,
      //       color: Colors.amber[700],
      //       child: Center(
      //         child: Text('Hello World',style: TextStyle(fontSize: 25,
      //         color: Colors.blue[400],
      //         fontWeight: FontWeight.bold,
      //         backgroundColor: Colors.blueAccent[100]),
      //       )
      //     )
      //   ),
      //  )
      // ---------------------------
      // types of buttons that allows to trigger an action
      //  text button
      //body: TextButton(
      //     child: Text('Click Here'),
      //     onPressed: () {
      //       print('Text Button Tapped!');
      //     },
      //     onLongPress: () {
      //       print('Long Pressed!');
      //     })

      // elevated button
      // body: ElevatedButton(
      //   child: Text('Elevated Button'),
      //   onPressed: (() {
      //     print('Button Pressed');
      //   }),
      // ),
      body: OutlinedButton(child: Text('Outlined Button'),
        onPressed: () {
          print('Button Pressed');
        },),
    );
  }
}
