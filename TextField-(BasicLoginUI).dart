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
  var emailText = TextEditingController();
  var passText = TextEditingController();
  var phoneText = TextEditingController();

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
        body: Center(
          child: Container(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailText,
                  // // to disable this input field we do this
                  // enabled: false,
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 2)),
                    // when input field is disabled then the border color is grey
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                TextField(
                  controller: phoneText,
                  keyboardType: TextInputType.phone,
                  // // to disable this input field we do this
                  // enabled: false,
                  decoration: InputDecoration(
                    hintText: 'Phone No',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 2)),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                TextField(
                  // controller are used to fetch email and password
                  controller: passText,
                  // to hide the password
                  obscureText: true,
                  // to use particular character to hide password
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Password ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    // suffixText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    ),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      String uEmail = emailText.text.toString();
                      String uPass = passText.text;
                      String uPhone = phoneText.text;

                      print('Email: $uEmail, Phone No: $uPhone Pass: $uPass');
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ));
  }
}
