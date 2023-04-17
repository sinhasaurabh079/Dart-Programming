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
    var time = DateTime.now();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade800,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Hello'),
        ),
        // we are creating a universal theme for textstyle in above main applicaton code
        // or we can derivate style by creating a util.dart file
        body: Center(
            child: Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Time: ${time}',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Current Year: ${time.year}',
                style: TextStyle(fontFamily: 'FontMain', color: Colors.amber),
              ),
              Text(
                'Current Month: ${time.month}',
                style: TextStyle(fontFamily: 'FontMain', color: Colors.pink),
              ),
              Text(
                'Current Day: ${time.day}',
                style: TextStyle(fontFamily: 'FontMain', color: Colors.green),
              ),
              Text(
                'Current Hour: ${time.hour}',
                style: TextStyle(fontFamily: 'FontMain', color: Colors.deepPurple),
              ),
              Text(
                'Current Minute: ${time.minute}',
                style: TextStyle(fontFamily: 'FontMain', color: Colors.blue),
              ),
              Text(
                'Current Time: ${time.hour}:${time.minute}:${time.second}',
                style: TextStyle(fontFamily: 'FontMain', color: Colors.cyan[900]),
              ),
              ElevatedButton(
                  onPressed: () {
                    // bar bar build function ko call krne k liye hm setState ka call krenge
                    // as buildContext is a stateful widget
                    setState(() {});
                  },
                  child: Text('Current Time'))
            ],
          ),
        )));
  }
}
