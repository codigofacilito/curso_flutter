import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';

class MyGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
         maxCrossAxisExtent:300,
          crossAxisSpacing: 30,
          mainAxisSpacing: 40
        ),
    itemCount: 30,
    itemBuilder: (context,index)=>MyCard());
  }

}