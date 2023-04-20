import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/main.dart';

class IntroScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      //---------------------------------------------------------------------------------
      // Screens follow LIFO stack fashion
      // recent called screen is on top
      // when back is press top screen is poppedand lower screen is the new top
      //---------------------------------------------------------------------------------
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: () {
                  //---------------------------------------------------------------------------------
                  // to push to new page we did this when button is tapped
                  // Navigator.push allows us to move to next screen
                  //---------------------------------------------------------------------------------
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage(),)
                      );
                },
                child: Text('Next'))
          ],
        ),
      ),
    );
  }
}
