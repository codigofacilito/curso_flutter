import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return GestureDetector(onTap: (){
     print("hola mundo");
   },child:
   Icon(Icons.pets,color: Colors.white,
     size: 30,),);
  }

}