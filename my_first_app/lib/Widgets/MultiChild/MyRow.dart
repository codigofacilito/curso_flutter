import 'package:flutter/material.dart';

class MyRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(children: [
          Text("Hoola"),
          Text("Hoola"),
          Text("Hoola"),
        ],),
        Text("Hoola"),
        Text("Hoola"),
        Text("Hoolaaaaaaaaaaaaaa"),
        Text("Hoolaaaaaaaaaaaaaa"),
        Text("Hoolaaaaaaaaaaaaaa"),
        Text("Hoolaaaaaaaaaaaaaa"),
      ],
    )) ;
  }

}