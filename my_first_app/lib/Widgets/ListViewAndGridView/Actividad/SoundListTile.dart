import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Model/Sound.dart';

typedef VoidCallbackParam(Sound sound);

class SoundListTile extends StatelessWidget {
  Sound sound;
  int index;

  SoundListTile(this.sound, this.index);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(
        sound.title,
      ),
      subtitle: Text(
        sound.author,
      ),

      leading: IconTheme(data:
          Theme.of(context).primaryIconTheme,child:Icon(
        Icons.play_circle_fill,
      )),
      onTap: () {
        Navigator.pushNamed(context, ROUTE_NOW_PLAYING,arguments: sound);
      },
      onLongPress: () {
        print("ListTile onLongPress");
      },
    );
  }
}
