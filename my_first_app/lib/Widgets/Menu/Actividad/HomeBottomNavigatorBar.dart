import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/SoundListTile.dart';
typedef VoidCallbackParam(int index);
class HomeBottomNavigatorBar extends StatelessWidget{
  VoidCallbackParam voidCallbackParam;
  int currentIndex;
  HomeBottomNavigatorBar(this.voidCallbackParam,this.currentIndex);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 30,
      onTap: voidCallbackParam,
        selectedItemColor: Colors.pink[100],
        iconSize: 30,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
          label: "Inicio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Perfil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "Configuración")
        ]);
  }

}