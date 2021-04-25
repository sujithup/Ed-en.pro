import 'package:ed_en_pro/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

