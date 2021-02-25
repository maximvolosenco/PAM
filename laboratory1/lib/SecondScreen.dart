import 'dart:ui';
import 'package:flutter/material.dart';
import 'MainScreen.dart';
import 'package:audioplayers/audio_cache.dart';


class SecondScreen extends StatelessWidget {
  String inputFromScreen1 = "";
  final _player = AudioCache();

  SecondScreen({Key key, this.inputFromScreen1}): super (key: key);

  // MainScreen _mainScreen = new MainScreen();

  @override
  Widget build(BuildContext context) {
    // _mainScreen.ChangeFieldAvailability();
    return Scaffold(
        appBar: AppBar(
          title: Text("Laboratory 1"),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                _moveToSignInScreen(context, inputFromScreen1);
              }),
        ),
        body: Column(
            children: [
              TextOutput(),
              RandomButton()
            ]
        )
    );
  }

  Widget TextOutput(){
    return  Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(40, 100, 40, 100),
      child: Text(inputFromScreen1),
    );
  }

  Widget RandomButton(){
    return Container(
      child: RaisedButton(

        textColor: Colors.white70,
        color: Colors.teal[700],
        child: Text("Push me"),
        onPressed: () => {
          _player.play("laser.wav")
        },

      ),
    );
  }


  void _moveToSignInScreen(BuildContext context, String data) {
    String newData = "";
    if (data != "") {
      newData = "CONCAT___" + data + "___ENATED";
    }
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => MainScreen(inputFromScreen2: newData)),
    );
  }
}
