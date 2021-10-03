import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Pages/NowPlayingPage.dart';
import 'package:my_first_app/Values/ColorsApp.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/PlayListView.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/MyGridView.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/MyListView.dart';
import 'package:my_first_app/generated/l10n.dart';

class PlayListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>PlayListPageState();

}

class PlayListPageState extends State<PlayListPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.pink[100],
       onPressed: (){
         myAppKey.currentState!.changeTheme(ThemeMode.dark);
       },
       child: Icon(Icons.nightlight_round,),
     ),
     body: SafeArea(
       child: PlayListView(),
     ),
   );
  }

}