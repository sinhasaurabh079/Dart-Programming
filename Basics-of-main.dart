import 'package:flutter/material.dart';

// main func of our app that calls runApp that further calls homepage
void main() {
  runApp(FlutterApp());
}

// each flutter project has a cycle that to be followed
// hence we inherit some property from StatelessWidget or StatefulWidget depending on need
// we need to override the default application with our own thats why we use @override
class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // since flutterapp returns an application that why we return MaterialApp for android
    // Cupertino for ios
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      // calls homescreen the first page of our app
      home: DashBoardScreen(),
    );
  }
}

// defination of DashBoardScreen
class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Container(
        color: Colors.blue.shade200,
      ),
    );
  }
}
