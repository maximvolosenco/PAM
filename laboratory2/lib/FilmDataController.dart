import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
// import 'dart:developer';
import 'Models/FilmInfoModel.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart';
import 'MainScreenxx.dart';

class FilmData extends StatefulWidget{
  @override
  FilmDataState createState() => FilmDataState();
}

class FilmDataState extends State<FilmData> {


  String _jsonData = "null";
  List<FilmInfo> _filmsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Laboratory 2"),
            centerTitle: true,
            automaticallyImplyLeading: false,
            leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              _moveToMainScreen(context);
            }),
        ),
        body: Container(
          // child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              for (var i in jsonDecoder()) informationField(i) 

            ]
          ),
        )
    // )
    );
  }

Future<String> loadFilmData() async {
  return await rootBundle.loadString('assets/documents/filmsData.json');
}

Widget informationField(FilmInfo data){
    return new
    Flexible(
        child:
        InkWell(
            onTap: () {},
            child: Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 55,
                        width: 30,
                        decoration: myBoxDecoration(),
                        child: Image(
                          image: AssetImage("assets/media/photos/judas_and_the_black_messiah.png"),
                          fit: BoxFit.fill
                        )

                      )),
                  Expanded(
                      flex: 3,
                      child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            data.name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ))),
                ],
              ),
            )),
    );

}

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      // color: Colors.deepPurple,
      borderRadius: BorderRadius.all(
          Radius.circular(5.0) //         <--- border radius here
      ),
    );
  }
  List<FilmInfo> jsonDecoder(){
    loadFilmData().then((String value) {
      setState(() {
        _jsonData = value;
      });
    });
    final jsonResponse = json.decode(_jsonData);

    // List<FilmInfo> itemsList = (jsonResponse as List)
    //     .map((data) => new FilmInfo.fromJson(data))
    //     .toList();
    List<FilmInfo> itemsList = List<FilmInfo>.from(jsonResponse.map((index) => FilmInfo.fromJson(index)));

    setState(() {
          _filmsList = itemsList;
        });
    return _filmsList;
  }

  void _moveToMainScreen(BuildContext context) {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
  }
}