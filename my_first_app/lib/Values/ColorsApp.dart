import 'package:flutter/material.dart';

Color? get icon1Color => Colors.pink[100];
Color? get icon2Color => Colors.blueGrey;
Color get  iconDark => Colors.white;


Color get textColor1 =>Colors.blueGrey;
Color? get textColor2 => Colors.pink[100];
Color get textDark => Colors.white;

Color get background => Colors.white;
Color get backgroundDark => Colors.black;

Color get testHex => hexToColor("#1cba9a");
Color get testOpa => Colors.red.withOpacity(1);
Color hexToColor(String code)=>Color(int.parse(code.substring(1,7),radix: 16)+ 0xFF000000);