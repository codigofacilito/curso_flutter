import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/SoundListTile.dart';
typedef VoidCallbackParam(int index);
class MyBottomNavigatorBar extends StatelessWidget{
  VoidCallbackParam voidCallbackParam;
  int currentIndex;
  MyBottomNavigatorBar(this.voidCallbackParam,this.currentIndex);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      onTap: voidCallbackParam,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        iconSize: 30,
        selectedLabelStyle: TextStyle(
          fontSize: 25
        ),
        unselectedLabelStyle:TextStyle(
            fontSize: 25
        ),
        backgroundColor: Colors.blue,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
          label: "Inicio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Perfil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configuración")
        ]);
  }

}