import 'package:flutter/material.dart';
import 'package:instagram/InstaHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram UI",
      theme: new ThemeData(
        primaryColor: Colors.black,
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
        primaryIconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(title: TextStyle(color:Colors.black))
      ),
   debugShowCheckedModeBanner: false,
   home: new InstaHome(),
    );

  }
}