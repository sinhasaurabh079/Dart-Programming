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
        
         body: ListView.separated(
          itemBuilder: (context, index) {
            // it is used inside ListView Widget that gives basic ui (similar to whatsapp chat page
            // that contains    leading, title & subtitle and at last trailing
            // ex : chat page    image ,  name & dp mesg and at last action button
            // it has automatic scrolling effect in case of data out of screen
            return ListTile(
              leading: Text('${index+1}') ,
              title: Text(arrNames[index]),
              subtitle: Text('Number'),
              trailing: Icon(Icons.add ),
            );
          },
          itemCount: arrNames.length,
          scrollDirection: Axis.horizontal, // by default vertical hota h
          separatorBuilder: (context, index) {
          return Divider(height: 10, thickness: 2.5,)
          },
        )
        
        );
  }
}
