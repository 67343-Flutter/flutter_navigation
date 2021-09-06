import 'package:flutter/material.dart';
import 'package:navigation_demo/screens/screen_1.dart';
import 'package:navigation_demo/screens/screen_2.dart';
import 'package:navigation_demo/screens/screen_3.dart';
import 'package:navigation_demo/screens/screen_4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new Screen1(),
      routes: <String, WidgetBuilder>{
        '/screen1': (BuildContext context) => new Screen1(),
        '/screen2': (BuildContext context) => new Screen2(),
        '/screen3': (BuildContext context) => new Screen3(),
        '/screen4': (BuildContext context) => new Screen4()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
