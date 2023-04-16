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
    var arrNames = ["Ram", "Shyam", "Rajesh", "James", "Radha"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Hello'),
      ),
      // body:  Container(
      //   width: 50,
      //   height: 50 ,
      //   // it can be resize in container or with radius attribute
      //   child: CircleAvatar(
      //     backgroundColor: Colors.blueAccent ,
      //     backgroundImage: AssetImage('assets/images/logo.png'),
      //     ),
      // ),
      body: Center(
        child: Text(
          'Namaste Guruji',
          style: TextStyle(fontFamily: 'FontMain',fontSize: 100),
        ),
      ),
    );
  }
}
