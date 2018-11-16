import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget{

  final toptext = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
     new Text("Stories", style: TextStyle(fontWeight: FontWeight.bold),),
      new Row(
         children: <Widget>[
           new Icon(Icons.play_arrow),
           new Text('Watch All', style: TextStyle(fontWeight: FontWeight.bold),)
         ],
      ),
    ],
  );

  final stories = new Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top:8.0),
        child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder:(context,index)=> new Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                new Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle  ,
                    image: new DecorationImage(
                        image: AssetImage('images/Instagram-hacks.jpg')
                    )
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                ),
                index==0? Positioned(
                  right: 10.0,
                  child: CircleAvatar(
                    backgroundColor:  Colors.blueAccent,
                    radius: 7.5,
                    child: new Icon(Icons.add,
                        size:14.0,
                        color:Colors.white
                    ),
                  ),
                ):Container(),
              ],
            )
        ),
      )
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          toptext,
          stories
        ],
      ),
    );
  }
}