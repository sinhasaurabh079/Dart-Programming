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
        // both container and its text is now has different clic features 
        // with the help of InkWell Widget
        body: Center(
          child: InkWell(
            onTap: () {
              print('Tapped on Container');
            },
            onLongPress: () {
              print('Long Pressed on Container');
            },
            onDoubleTap: () {
              print('Double Tapped on Container');
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: Center(
                  child: InkWell(
                onTap: () {
                  print('Tapped on Text');
                },
                child: Text(
                  'Click Here',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              )),
            ),
          ),
        ));
  }
}
