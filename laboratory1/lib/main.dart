import 'dart:ui';
import 'package:flutter/material.dart';

import 'MainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple[800],
      ),
      home: MainScreen(),
    );
  }
}

