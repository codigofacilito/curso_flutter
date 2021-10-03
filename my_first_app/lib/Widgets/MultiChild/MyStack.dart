import 'package:flutter/material.dart';

class MyStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.centerRight,
      fit: StackFit.expand,
      children: [
        Image.asset("assets/images/Cody.jpeg"),
        Positioned(
            right: 10,
            child: Icon(Icons.close,color: Colors.red,size: 40,))
      ],
    ) ;
  }

}