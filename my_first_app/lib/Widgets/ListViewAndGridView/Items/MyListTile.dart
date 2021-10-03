import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Model/Sound.dart';

typedef VoidCallbackParam(Sound sound);

class MyListTile extends StatelessWidget {
  Sound sound;
  int index;
  VoidCallbackParam voidCallbackParam;

  MyListTile(this.sound, this.index, this.voidCallbackParam);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(
        sound.title,
        style: TextStyle(fontSize: 30),
      ),
      subtitle: Text(sound.author),
      trailing: InkWell(
          onTap: () => myListViewKey.currentState?.remove(sound),
          child: Icon(Icons.close)),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: () => myListViewKey.currentState
          ?.update(sound..title = "Hola mundo", index),
      onLongPress: () {
        print("ListTile onLongPress");
      },
    );
  }
}
