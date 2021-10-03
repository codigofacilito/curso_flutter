import 'package:flutter/material.dart';

class AppBarCF extends StatelessWidget implements PreferredSizeWidget {
  String title;
  AppBarCF(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text(this.title),
      backgroundColor: Colors.teal,
      elevation: 30,
      shadowColor: Colors.white,
      centerTitle: true,
      //leading: Icon(Icons.star_border, color: Colors.white, size: 30),
      actions: [
        Icon(
          Icons.edit,
          color: Colors.white,
          size: 30,
        ),
        PopupMenuButton(
          color: Colors.red,
          elevation: 30,
          shape: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 10
            )
          ),
          icon: Icon(Icons.more_vert),
            itemBuilder: (context)=>[
              PopupMenuItem(
                  value: 1,
                  child: Text("Compartir",style: TextStyle(color: Colors.white),)),
              PopupMenuItem(
                  value: 2,
                  child: Text("Obtener Link"))
            ])
      ],
      toolbarHeight: 100,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(200);
}
