import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Values/DimensApp.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';
import 'package:sizer/sizer.dart';
import 'CoverContainer.dart';
import 'SoundListTile.dart';

class PlayListView extends StatefulWidget {
  PlayListView() : super(key: playListView);

  @override
  State<StatefulWidget> createState() => PlayListViewState();
}

class PlayListViewState extends State<PlayListView> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    this.mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
      children: [
        SizedBox(
            height: coverHeight,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                //  physics: NeverScrollableScrollPhysics(),
                itemCount: sounds.length,
                itemBuilder: (context, index) {
                  return CoverContainer(this.mySounds[index].cover);
                })),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: sounds.length,
            itemBuilder: (context, index) {
              Sound sound = this.mySounds[index];
              return SoundListTile(sound, index);
            })
      ],
    ));
  }
}
