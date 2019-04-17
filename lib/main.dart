import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screen/index_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    statusBarColor: Color(0xFF0374BB),
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projext Manager Flutter Challenge',
      debugShowCheckedModeBanner: false,
      home: IndexScreen(),
    );
  }
}