import 'dart:ui';
import 'SecondScreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final double textFieldDimension = 350;
  String insertedData = "";
  String inputFromScreen2 = "";
  bool isFieldEnabled = false;



  MainScreen({Key key, this.inputFromScreen2}): super (key : key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Laboratory 1"),
            centerTitle: true,
            automaticallyImplyLeading: false
        ),
        body: Column(
          children: [
            TextFromSecondScreen(),
            InputStringField(),
            ShowStringButton(context),
          ],
        )
    );
  }

  Widget InputStringField(){
    return new Container(
      width: textFieldDimension,
      margin: EdgeInsets.fromLTRB(40, 50, 40, 50),
      child: new TextField(
        decoration: InputDecoration(
          labelText: "Input your string",
          floatingLabelBehavior: FloatingLabelBehavior.never,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey[800])),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.grey[800]),
          ),
        ),
        onChanged: (String inputData){
          {
            insertedData = inputData;
          }
        },
      ),
    );
  }
  Widget ShowStringButton(BuildContext context){
    return new Container(
      child: RaisedButton(
        onPressed: () => ButtonNavigator(context),
        textColor: Colors.white70,
        color: Colors.deepPurple,
        child: Text("Show string"),
      ),
    );
  }

  Widget ButtonNavigator(BuildContext context){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => SecondScreen(inputFromScreen1: insertedData)),
    );
  }

  Widget TextFromSecondScreen() {
    if (inputFromScreen2 != null ){
      return new Container(
          margin: EdgeInsets.fromLTRB(40, 60, 40, 0),
          child: Text(inputFromScreen2)
      );
    }
    return new Container(
      margin: EdgeInsets.fromLTRB(40, 60, 40, 0),
    );
  }


}