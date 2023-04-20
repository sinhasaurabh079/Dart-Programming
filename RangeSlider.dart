import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // range of values of slider : range = {min,max}
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    // label ko bar bar build krwana hoga isliye build() m bna rhe h
    // labels mtlb wo pop jo dikha rha h konsi value aa rhi h slide krne pr
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar: AppBar(
          title: Text('Range Slider'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 10,
            // colors de diya 
            activeColor: Colors.amber,
            inactiveColor: Colors.amberAccent[100],
            // we need to update min and max for custom range
            min: 0,
            max: 100,
            onChanged: (newValue) {
              values = newValue;
              print('${newValue.start}, ${newValue.end}');
              // phir se update krne k liye slider ko rebuild krdiya ui ko
              setState(() {});
            },
          ),
        ));
  }
}
