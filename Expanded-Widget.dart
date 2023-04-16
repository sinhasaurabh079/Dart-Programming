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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // to allot free space to single widget we use Expanded Widget
              //  to maintain a ratio between widget expansion we use flex attribute of Expanded Widget
              Container(
                width: 50,
                height: 100,
                color: Colors.blue,         
              ),
              Container(
                width: 50,
                height: 100,
                color: Colors.amber,
              ),
              Container(
                width: 50,
                height: 100,
                color: Colors.green,
                ),
              Expanded(
                flex: 2,
                child: Container(
                    width: 50,
                    height: 100,
                    color: Colors.pinkAccent,
                  ),
              )
            ],
          ),
          Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // to allot free space to single widget we use Expanded Widget
              //  to maintain a ratio between widget expansion we use flex attribute of Expanded Widget
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Colors.blue,         
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 100,
                  color: Colors.amber,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Colors.green,
                  ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    height: 100,
                    color: Colors.pinkAccent,
                  ),
              )
            ],
          )
        ],
      )
    );
  }
}
