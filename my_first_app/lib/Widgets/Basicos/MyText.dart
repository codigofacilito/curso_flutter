import 'package:flutter/material.dart';

class MyText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Text(
     "Hola Mundo, Bienvenido a CodigoFacilito",
     style: TextStyle(
       color: Colors.white,
       fontSize: 40,
     //  fontWeight: FontWeight.bold,
       letterSpacing: 5,
       wordSpacing: 20,
       backgroundColor: Colors.black26,
       fontFamily: "Montserrat",
       decoration: TextDecoration.underline
     ),
     textAlign: TextAlign.justify,
     softWrap: true,
     maxLines: 2,
     overflow: TextOverflow.ellipsis,
   );
  }

}