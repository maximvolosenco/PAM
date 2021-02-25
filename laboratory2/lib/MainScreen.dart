import 'package:flutter/material.dart';
import 'FilmDataController.dart';


class MainScreen extends StatefulWidget{
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333631),
        appBar: AppBar(
            title: Text("Laboratory 2"),
            centerTitle: true,
            automaticallyImplyLeading: false,
            elevation: 50.0,
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Menu Icon',
              onPressed: () {},
            ),
            brightness: Brightness.dark

        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            FilmCategoryField(context),
            FilmCategoryField(context),

            ]
            )
            // Text("Smth")

          ],
        )
    );
}

  Widget FilmCategoryField(BuildContext context){
    return new Flexible(
        child: InkWell(
          onTap: () => _moveToFilmData(context),
          child: Container(
            margin: EdgeInsets.only(top: 30),
            // margin: EdgeInsets.all(20),
            // color: Colors.white,
            width: 150,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(50.0) //         <--- border radius here
              ),
            ),
            child: Column(
              children :[
                Row(
                  children: <Widget>[
                    ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
                    ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    ImageFormate("assets/media/photos/dead_pigs.jpg"),
                    ImageFormate("assets/media/photos/judas_and_the_black_messiah.png"),
                  ],
                ),
                Text("Smth",
                    style: TextStyle(
                      color: Colors.white
                    ),)
            ]
          ))
    )
    );

    // Flexible(
    //   child:
    //   InkWell(
    //       onTap: () => _moveToFilmData(context),
    //       child: Card(
    //         shape: BeveledRectangleBorder(
    //           borderRadius: BorderRadius.circular(5.0),
    //         ),
    //         elevation: 2,
    //           child: Row(
    //               children: <Widget>[ Image(
    //                 image: AssetImage("assets/media/photos/judas_and_the_black_messiah.png"),
    //                 fit: BoxFit.fill
    //             )
    //       ]
    //           )
    //         // child: Row(
    //         //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         //   children: <Widget>[
    //         //     Expanded(
    //         //         flex: 1,
    //         //         child: Container(
    //         //             height: 55,
    //         //             width: 30,
    //         //             decoration: myBoxDecoration(),
    //         //             child: Image(
    //         //                 image: AssetImage("assets/media/photos/judas_and_the_black_messiah.png"),
    //         //                 fit: BoxFit.fill
    //         //             )
    //         //
    //         //         )),
    //         //     Expanded(
    //         //         flex: 3,
    //         //         child: Padding(
    //         //             padding: EdgeInsets.only(left: 5),
    //         //             child: Text(
    //         //               "no name",
    //         //               overflow: TextOverflow.ellipsis,
    //         //               style: TextStyle(
    //         //                 fontSize: 15,
    //         //               ),
    //         //             ))),
    //         //   ],
    //         // ),
    //       )),
    // );

  }

  Widget ImageFormate(String imagePos){
    return new Image(
      image: AssetImage(imagePos),
      fit: BoxFit.fill,
      width: 75,
      height: 75,
    );
  }
  Widget _moveToFilmData(BuildContext context){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => FilmData()),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.all(
          Radius.circular(5.0)
      ),
    );
}



}