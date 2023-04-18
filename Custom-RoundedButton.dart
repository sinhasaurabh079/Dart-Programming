import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/ui_helper/widgets/custom-text.dart';
import 'package:learning/ui_helper/widgets/rounded-button.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade800,
          title: Text('Custom Widget'),
        ),
        // ek widget ko class bna do and jaha uska use krna h usko callBack krlo
        // yha RoundedButton ka code widget folder m likh diya and jha iski jarurat h
        // waha uska call krliye with parameter
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: 'Login',
                  icon: Icon(Icons.lock),
                  callBack: () {
                    print('Logged In!');
                  },
                  textStyle: mTextstyle21(),
                ),
              ),
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: 'Play',
                  icon: Icon(Icons.play_arrow),
                  callBack: () {
                    print('Playing!');
                  },
                  textStyle: mTextstyle21(),
                ),
              ),
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: 'Sign Up',
                  callBack: () {
                    print('Logged In!');
                  },
                  bgColor: Colors.orange,
                  textStyle: mTextstyle21(),
                ),
              ),
            ],
          ),
        ));
  }
}

/// ---------------------------------------------------------------
// rounded-buttton.dart code here 
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  RoundedButton(
      {required this.btnName,
      this.icon,
      this.bgColor = Colors.blue,
      this.textStyle,
      this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!();
      },
      // ternary condition , agr icon pass hoga toh icon and text dono button k upr ayega
      // wrna bas text ayega button k upr
      child: icon!=null ?  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          Container(
            width: 11,
          ),
          Text(btnName,style: textStyle,)
        ],
      )
      :Text(btnName,style: textStyle,),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(21),
            topLeft: Radius.circular(21), )
        ) 
      ),    
    );
  }
}

