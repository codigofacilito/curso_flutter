import 'package:flutter/material.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
import 'package:my_first_app/Widgets/MultiChild/Actividad/PlayingNow.dart';
import 'package:my_first_app/Widgets/MultiChild/MyColumn.dart';
import 'package:my_first_app/Widgets/MultiChild/MyRow.dart';
import 'package:my_first_app/Widgets/MultiChild/MyStack.dart';
import 'package:my_first_app/Widgets/MultiChild/MyWrap.dart';

class NowPlayingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>NowPlayingPageState();

}

class NowPlayingPageState extends State<NowPlayingPage>{

  @override
  Widget build(BuildContext context) {
    Sound sound = ModalRoute.of(context)?.settings.arguments as Sound;

    // TODO: implement build
   return Scaffold(
     body: SafeArea(
       child: PlayingNow(sound),
     ),
   );
  }

}