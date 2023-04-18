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
        backgroundColor: Colors.orange.shade800,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Hello'),
      ),
      // iss widget ki help se containers automatic adjust ho jayenge in case of any pixel overflow error
      body: Center(
        //child: ConstrainedBox(
        //  constraints: BoxConstraints(
        //      maxHeight: 60, minHeight: 20, maxWidth: 300, minWidth: 100),
        // ------------------------------------------------------
        // adapts max values of height and width
        // child: SizedBox.expand(
        //     child: ElevatedButton(
        //   child: Text('Click'),
        //   onPressed: () {},
        // ),
        // ),
        // ---------------------------------------------------------
        // adapts min values of height and width
        //     child: SizedBox.shrink(
        //       child: ElevatedButton(
        //     child: Text('Click'),
        //     onPressed: () {},
        //   ),

        //   ),
        // ),
        //)
        // -----------------------------------------------------------------
        child: SizedBox.square(
          dimension: 200,
          child: ElevatedButton(
            child: Text('Click'),
            onPressed: () {},
          ),
        ),
        // -----------------------------------------------------------------
        // SizedBox can be used to separate two widget
        // manlo agr kisi row, column, ya wrap m ek separator bnana h
        // SizedBox(width: 100,
        // height: 100,),
      ),
    );
  }
}
