import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture:
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/Cody.jpeg"),
            ),
              accountName: Text("Marines Mendez"),
              accountEmail: Text("marines@codigofacilito.com")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Inicio"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_play_outlined),
            title: Text("Mi lista"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Configuracion"),
          ),
          Divider(
            height: 6,
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text("Cerrar Sesión"),
          ),
        ],
      ),
    ) ;
  }

}