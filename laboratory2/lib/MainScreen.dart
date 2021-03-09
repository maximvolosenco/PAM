import 'package:flutter/material.dart';
import 'FilmDataController.dart';


class MainScreen extends StatefulWidget{
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return new Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // mainAxisAlignment: MainAxisAlignment,
      children: <Widget>[
        SizedBox(height: 10),
        ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
        SizedBox(height: 10),
        ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
        SizedBox(height: 10),
        ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
        SizedBox(height: 10),
        ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
        SizedBox(height: 10),
        ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
        SizedBox(height: 10),
        ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
        SizedBox(height: 10),
        ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
        SizedBox(height: 10),
        ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
      ],
    );
  }

  //   return new Column(
  //         // mainAxisAlignment: MainAxisAlignment.,
  //         children: [
  //           Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: <Widget>[
  //                 FilmCategoryField(context),
  //                 FilmCategoryField(context),
  //
  //               ]
  //           )
  //           // Text("Smth")
  //
  //         ],
  //       );
  //
  // }
  //
  // Widget FilmCategoryField(BuildContext context){
  //   return new Flexible(
  //       child: InkWell(
  //           onTap: () {},
  //           // => _moveToFilmData(context),
  //           child: Container(
  //               margin: EdgeInsets.only(top: 30),
  //               // margin: EdgeInsets.all(20),
  //               // color: Colors.white,
  //               width: 150,
  //               height: 170,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.all(
  //                     Radius.circular(50.0) //         <--- border radius here
  //                 ),
  //               ),
  //               child: Column(
  //                   children :[
  //                     Row(
  //                       children: <Widget>[
  //                         ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
  //                         ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
  //                       ],
  //                     ),
  //                     Row(
  //                       children: <Widget>[
  //                         ImageFormate("assets/media/photos/dead_pigs.jpg"),
  //                         ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
  //                       ],
  //                     ),
  //                     Text("Smth",
  //                       style: TextStyle(
  //                           color: Colors.white
  //                       ),)
  //                   ]
  //               ))
  //       )
  //   );
  //
  // }
  //
  Widget ImageFormate(String imagePos){
    return new Image(
      image: AssetImage(imagePos),
      fit: BoxFit.fill,
      width: 75,
      height: 75,
    );
  }
  // Widget _moveToFilmData(BuildContext context){
  //   Navigator.push(context,
  //     MaterialPageRoute(builder: (context) => FilmData()),
  //   );
  // }




}