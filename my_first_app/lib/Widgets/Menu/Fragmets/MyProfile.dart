import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
            backgroundImage: AssetImage("assets/images/Cody.jpeg"),
        radius: 70,),
        Text("Marines",style: TextStyle(fontSize:35,color: Colors.blueGrey),),
        OutlinedButton(
            style:OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blueGrey,width: 1),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ) ,
            onPressed: (){print("TextButton");},
            child: Text("Editar Perfil",style: TextStyle(color: Colors.blueGrey),)),
       Padding(padding: EdgeInsets.symmetric(vertical: 20),child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            columnData("13","PLAYLIST"),
            columnData("300","SEGUIDORES"),
            columnData("500","SIGUIENDO"),
          ],
        )),
  Text("No hay actividad reciente",style: TextStyle(fontSize:20,color: Colors.blueGrey),)

    ],
    );
  }

  columnData(String count,String title){
    return Column(
      children: [
        Text(count,style: TextStyle(color: Colors.blueGrey),),
        Text(title,style: TextStyle(color: Colors.blueGrey),)
      ],
    );
  }

}
