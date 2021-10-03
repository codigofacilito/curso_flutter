import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class MyListView extends StatefulWidget {
  MyListView():super(key: myListViewKey);
  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<MyListView> {
  List<Sound>mySounds=[];


  @override
  void initState() {
    this.mySounds=sounds;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.red,
      child: ListView.builder(
          shrinkWrap: true,
          // scrollDirection: Axis.horizontal,
          reverse: true,
          //  physics: NeverScrollableScrollPhysics(),
          itemCount: sounds.length,
          itemBuilder: (context, index) {
            Sound sound = this.mySounds[index];
            return Dismissible(
              direction: DismissDirection.endToStart,
              key: ObjectKey(sound), child: MyListTile(sound,index,remove),
            onDismissed: (direction){
              remove(sound);
            },);
          }),
    );
  }


  update(Sound sound,int index){
    setState(() {
      mySounds[index]=sound;
    });
  }
  add(Sound sound){
    setState(() {
      mySounds.add(sound);
    });
  }
  remove(Sound sound){
    setState(() {
      mySounds.remove(sound);
    });
  }
}
