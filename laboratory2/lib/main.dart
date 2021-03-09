import 'package:flutter/material.dart';
import 'MainScreenxx.dart';
import 'MenuBar/MainMenu.dart';
// import 'FilmDataController.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff0e0d0d),
      ),
      debugShowCheckedModeBanner: false,
      title: "Side Bar App",
      home: MainMenu(),

      // MainScreen(),

      // MainScreen(),
    );
  }
}
