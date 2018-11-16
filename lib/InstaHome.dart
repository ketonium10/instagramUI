import 'package:flutter/material.dart';
import 'package:instagram/InstaBody.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaHome extends StatelessWidget{


  final topbar = new AppBar(
    backgroundColor: Colors.white70,
    title: SizedBox(
      height: 35.0, child: Image.asset("images/insta_logo.png"),
    ),
    centerTitle: true,
    leading: new Icon(Icons.camera_alt,),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: new Icon(Icons.send) ,

      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topbar,
      body: new InstaBody(),
      bottomNavigationBar: new Container(
        height: 50.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(icon: Icon(Icons.home), onPressed: null),
              new IconButton(icon: Icon(Icons.search), onPressed: null),
              new IconButton(icon: Icon(Icons.add_box), onPressed: null),
              new IconButton(icon: Icon(Icons.favorite_border), onPressed: null),
              new IconButton(icon: Icon(Icons.account_circle), onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}