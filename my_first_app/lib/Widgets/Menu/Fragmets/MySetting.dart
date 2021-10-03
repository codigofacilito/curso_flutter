import 'package:flutter/material.dart';

class MySetting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Cuenta gratis",style: TextStyle(
            color: Colors.blueGrey,
          fontSize: 20
        ),),
        OutlinedButton(
            style:OutlinedButton.styleFrom(
              padding: EdgeInsets.all(15),
                side: BorderSide(color: Colors.blueGrey,width: 1),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ) ,
            onPressed: (){print("TextButton");},
            child: Text("Cabiar a premium",style: TextStyle(fontSize:19,color: Colors.blueGrey),)),

        SwitchListTile(
          title: Text("Calidad de audio",style: TextStyle(
            color: Colors.blueGrey
          ),),
            value: false,
            activeColor: Colors.pink[100],
            onChanged: (value){}),
        SwitchListTile(
            title: Text("Descaragar solo el audio",style: TextStyle(
                color: Colors.blueGrey
            ),),
            value: true,
            activeColor: Colors.pink[100],
            onChanged: (value){}),
        SwitchListTile(
            title: Text("Sin Pausas",style: TextStyle(
                color: Colors.blueGrey
            ),),
            value: false,
            activeColor: Colors.pink[100],
            onChanged: (value){}),
        SwitchListTile(
            title: Text("AutoPlay",style: TextStyle(
                color: Colors.blueGrey
            ),),
            value: true,
            activeColor: Colors.pink[100],
            onChanged: (value){}),
        ListTile(
          trailing: Icon(Icons.close),
          title: Text("Cerrar sesión"),
          subtitle: Text("Has iniciado sesión como Marines"),
        )
      ],
    );
  }

}