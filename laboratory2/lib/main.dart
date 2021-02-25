import 'package:flutter/material.dart';
import 'MainScreen.dart';
// import 'FilmDataController.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff0e0d0d),
      ),
      home: MainScreen(),

      // MainScreen(),
    );
  }
}
