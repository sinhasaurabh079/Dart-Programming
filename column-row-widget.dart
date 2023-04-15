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
        title: Text('Hello'),
      ),
      body: Column(
        // we can nest multiple col and row depending upon the design need
        // divides element evenly on screen
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        crossAxisAlignment: CrossAxisAlignment.center,
        // <widget> defines the array of widget
        // we can define array of text, image, etc widgets depending on need
        // we can determine if needed other wise no need to include< Widget>
        children: <Widget>[
          Text('A',style: TextStyle(fontSize: 12)),
          Text('B',style: TextStyle(fontSize: 12)),
          Text('C',style: TextStyle(fontSize: 12)),
          Text('D',style: TextStyle(fontSize: 12)),
          Text('E',style: TextStyle(fontSize: 12)),
        ],
      )
    );
  }
}
