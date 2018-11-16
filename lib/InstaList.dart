import 'package:flutter/material.dart';
import 'package:instagram/InstaStories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new  ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index) =>index ==0?
         new SizedBox(
          child: new InstaStories(),
          height: deviceSize.height*0.2,
        ): new Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.fromLTRB(16.0, 0.0, 2.0, 2.0),
               child: new Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   new Row(
                     children: <Widget>[
                       new Container(
                         width: 40.0,
                         height: 40.0,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           image: new DecorationImage(
                               image: AssetImage("images/Instagram-hacks.jpg")
                           ),
                         ),
                       ),
                       new SizedBox(
                         width: 10.0,
                       ),
                       new Text("thegirlnextdoor",style: TextStyle(fontWeight: FontWeight.bold),),
                     ],
                   ),
                       new IconButton(
                           icon: Icon(Icons.more_vert),
                           onPressed: null)
                 ],
               ),
             ),
             Flexible(
               fit: FlexFit.loose,
               child: new Image.asset('images/Instagram-hacks.jpg',fit: BoxFit.cover,),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(8.0, 2.0, 2.0, 2.0),
               child: new Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   new Row(
                     children: <Widget>[
                       new IconButton(icon: Icon(FontAwesomeIcons.heart), onPressed: null),
                       new IconButton(icon: Icon(FontAwesomeIcons.comment), onPressed: null),
                       new IconButton(icon: Icon(FontAwesomeIcons.paperPlane), onPressed: null),
                     ],
                   ),
                   new IconButton(icon: Icon(FontAwesomeIcons.bookmark), onPressed: null)
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left:16.0),
               child: new Text("Liked by suprateek1912 and 540 others", style: TextStyle(fontWeight: FontWeight.bold)),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(16.0, 2.0, 2.0, 2.0),
               child: new Row(
                 children: <Widget>[
                   new Container(
                     width: 40.0,
                     height: 40.0,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
//                           fit:BoxFit.fill,
                           image:AssetImage('images/Instagram-hacks.jpg')),
                     ),
                   ),
                   SizedBox(
                     width: 10.0,
                   ),
                   Expanded(
                     child: new TextField(
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: 'Type here'
                       ),
                     ),
                   )
                 ],
               ),
             )
           ],
        )
    );
  }
}