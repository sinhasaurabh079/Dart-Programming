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
          headline1: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
        )
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Hello'),
      ),
      // we are creating a universal theme for textstyle in above main applicaton code
      // or we can derivate style by creating a util.dart file
      body: Column(
        children: [
          Text('1',style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.orange),),
          Text('2',style: Theme.of(context).textTheme.subtitle1,),
          Text('3',style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.orange),),
          Text('4',style: Theme.of(context).textTheme.subtitle1,),
          // sizes of text are taken from the util.dart file 
          Text('5',style: mTextstyle11(textColor: Colors.blue,fontWeight: FontWeight.bold),),
          Text('6',style: mTextstyle21(),),
          Text('7',style: mTextstyle31(),),
          Text('8',style: mTextstyle41(),),

        ],
      ),
    );
  }
}
