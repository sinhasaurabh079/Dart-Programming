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
        // ListView is used for static data whereas for dynamic data
        // we use ListView.Builder
        // body: Center(
        //   child: ListView(
        //        scrollDirection: Axis.horizontal,
        //        children: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Text('One',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),)),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Text('Two',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Text('Three',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Text('Four',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Text('Five',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        //         ),
        //        ],
        //   ),
        // )
        // ---------------
        // ListView.builder
        // body: ListView.builder(
        //   itemBuilder: (context, index) {
        //     return Text(
        //       arrNames[index],
        //       style: TextStyle(
        //           fontSize: 21,
        //           fontWeight: FontWeight.w500,
        //           color: Colors.amber),
        //     );
        //   },
        //   itemCount: arrNames.length,
        //   itemExtent: 100, // extends the content over the screen
        //   scrollDirection: Axis.horizontal, // by default vertical hota h
        //)
        // -------------------------------------
        //listview.separated to separate element
         body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Colors.amber),
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
