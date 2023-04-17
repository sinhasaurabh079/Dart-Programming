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
        // covers the whole screen
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade200,
        // container will be at center
        child: Center(
          child: Container(
             width: 150,
             height: 150,
            //  color: Colors.blueGrey,  yha pr color nhi dalna isko BoxDecoration class k andar dalna h
             decoration: BoxDecoration( 
              color: Colors.blueGrey,
              // to round the corners automatially acc. to box dimension
              // borderRadius: BorderRadius.circular(11), 
              //  to circle particular corner
              borderRadius: BorderRadius.only(topLeft: Radius.circular(11),bottomRight: Radius.circular(11)) ,  
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              boxShadow: [
                BoxShadow(    
                  blurRadius: 11,
                  color: Colors.blueAccent,
                  spreadRadius: 5,
                )
              ],
              // shape: BoxShape.circle,   // to have container of particular size, if circle then we have to remove borderradius class
             ),
          ),
        ),
      ),
    );
  }
}
