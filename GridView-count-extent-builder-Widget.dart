import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/ui_helper/util.dart';
import 'package:intl/intl.dart';

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
          textTheme: const TextTheme(
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
    var arrColors = [
      Colors.yellow,
      Colors.orange,
      Colors.blue,
      Colors.green,
      Colors.cyan,
      Colors.pink,
      Colors.purpleAccent,
      Colors.red[500]
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade800,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Hello'),
        ),
        // GridView.count is used to set fixed no of columns in a row
        body:
            // -----------------------------------------------------------
            //  GridView.count(
            //         crossAxisCount: 3,
            //         // we can also add padding to grid without Padding Class
            //         // with the help of crossAxisSpacing and mainAxisSpacing
            //         crossAxisSpacing: 10,
            //         mainAxisSpacing: 10,
            //         children: [
            //           Container(color: arrColors[0],),
            //           Container(color: arrColors[1],),
            //           Container(color: arrColors[2],),
            //           Container(color: arrColors[3],),
            //           Container(color: arrColors[4],),
            //           Container(color: arrColors[5],),
            //           Container(color: arrColors[6],),
            //           Container(color: arrColors[7],),
            //         ],
            //       ),
            // -----------------------------------------------------------------
            // when grid count need to be changed according to available space
            // body: GridView.extent(maxCrossAxisExtent: 50,
            //     crossAxisSpacing: 10,
            //     mainAxisSpacing: 10,
            //     children: [
            //         Container(color: arrColors[0],),
            //         Container(color: arrColors[1],),
            //         Container(color: arrColors[2],),
            //         Container(color: arrColors[3],),
            //         Container(color: arrColors[4],),
            //         Container(color: arrColors[5],),
            //         Container(color: arrColors[6],),
            //         Container(color: arrColors[7],),
            //     ],),
            // ------------------------------------------------------------------------
            GridView.builder(
              // for fixed  grid count
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount:3,
              //   crossAxisSpacing: 10,
              //   mainAxisSpacing: 10
              // ),
              // for grid count depending on space
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              color: arrColors[index],
            );
          },
          itemCount: arrColors.length,
        )
    );
  }
}
