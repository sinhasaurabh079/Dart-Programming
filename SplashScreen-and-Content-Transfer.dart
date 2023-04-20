// ---------------------------------------------------------------------------------------------------
// main.dart
// --------------------------------------------------------------------------------------------------
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning/screens/contentScreen.dart';
import 'package:learning/screens/splashscreen.dart';
import 'package:learning/ui_helper/widgets/custom-text.dart';

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
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen to Screen'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
            width: 300,
            color: Colors.lightBlue,
            child: Column(
              children: [
                Text(
                  'Home Page',
                  style: mTextstyle16(),
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: nameController,
                ),
                SizedBox(
                  height: 11,
                ),
                //---------------------------------------------------
                // yha pr jb click krega user tb upr textfield se jp text milega usko ContentScreen m bhejdenge and waha pr 
                // usko print krwa rhe h 
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                contentScreen(nameController.text.toString())));
                  },
                  child: Text(
                    'Click',
                  ),
                )
              ],
            )),
      ),
    );
  }
}
// ---------------------------------------------------------------------------------------------------
// splashScreen.dart
// ---------------------------------------------------------------------------------------------------
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/screens/introScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


//  we did the splashscreen code in initial state build of app   
  @override
  void initState() {
    super.initState();

// for delay or time for which splash screen need to shown
// after that other screen or function needed will be done
    Timer(Duration(seconds: 5), () {
      
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context)=> IntroScreeen()));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // no app bar is spash screen bcoz we try to this as not a part of
      // application , it just used to show  loading functionality for background process
      body: Container(
        color: Colors.lightBlue,
        child: Center(
            child: Text(
          'Classico',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}

// ------------------------------------------------------------------------------------------------
// Content transfer from one screen to another screen
// ------------------------------------------------------------------------------------------------
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/main.dart';
import 'package:learning/ui_helper/widgets/custom-text.dart';

class contentScreen extends StatelessWidget {

  var nameFromHome;

  contentScreen(this.nameFromHome);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content'),
      ),
      body: Container(
        color: Colors.lightBlue,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, $nameFromHome',style: mTextstyle16(),),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        )),
      ),
    );
  }
}
