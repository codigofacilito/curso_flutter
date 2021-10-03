import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onDoubleTap: (){print("onDoubleTap");},
      onTapDown:(TapDownDetails downDetails){print("onTapDown ${downDetails.globalPosition}");},
      onTapUp: (TapUpDetails downDetails){print("onTapUp");},
      child:Card(
      margin: EdgeInsets.all(20),
      elevation: 30,
      color: Colors.blue,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: Colors.red,
          width: 10
        )
      ) ,
      shadowColor: Colors.deepOrange,
      child: Text("Hola mundo",style: TextStyle(fontSize: 40),),
    ) ,);
  }

}