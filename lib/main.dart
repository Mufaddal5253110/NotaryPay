import 'package:flutter/material.dart';
import 'package:intern_proj_1/screens/bottom_screen.dart';
import 'package:intern_proj_1/screens/scrn_1.dart';
import 'package:intern_proj_1/screens/scrn_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabView(),
      // home: BottomScreen(),
    );
  }
}
