import 'package:flutter/material.dart';
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
          title: Text('Positioned'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 60,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
              )
            ],
           ),) 
        
    );
  }
}
