import 'package:flutter/material.dart';
import 'package:my_first_app/Common/HomeArguments.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/AppBarCF.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/FloatingActionButtonCF.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/ImageCF.dart';
import 'package:my_first_app/Widgets/Basicos/MyAppBar.dart';
import 'package:my_first_app/Widgets/Basicos/MyButtons.dart';
import 'package:my_first_app/Widgets/Basicos/MyFloatingActionButton.dart';
import 'package:my_first_app/Widgets/Basicos/MyIcon.dart';
import 'package:my_first_app/Widgets/Basicos/MyImage.dart';
import 'package:my_first_app/Widgets/Basicos/MyRichText.dart';
import 'package:my_first_app/Widgets/Basicos/MyText.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/PlayListView.dart';
import 'package:my_first_app/Widgets/Menu/Actividad/HomeBottomNavigatorBar.dart';
import 'package:my_first_app/Widgets/Menu/Fragmets/MyHome.dart';
import 'package:my_first_app/Widgets/Menu/Fragmets/MyProfile.dart';
import 'package:my_first_app/Widgets/Menu/Fragmets/MySetting.dart';
import 'package:my_first_app/Widgets/Menu/MyBottomNavigatorBar.dart';
import 'package:my_first_app/Widgets/Menu/MyDrawer.dart';
import 'package:my_first_app/Widgets/MultiChild/Actividad/PlayingNow.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 List fragments=[
   MyHome(),
   MyProfile(),
   MySetting()
 ];

 int currentIndex=0;

  @override
  Widget build(BuildContext context) {
   // HomeArguments homeArguments = ModalRoute.of(context)!.settings.arguments as HomeArguments;

    return Scaffold(
      drawer: MyDrawer(),
        bottomNavigationBar: MyBottomNavigatorBar(onTab,currentIndex),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButtonCF(bottomSheet),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        appBar: AppBarCF("Codigo Facilito"),
        body:fragments[currentIndex]);
  }

  bottomSheet(){
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Compartir"),
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Copiar Link"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Enviar"),
              )
            ],
          );
        });
  }

  onTab(int index){
    setState(() {
      this.currentIndex=index;
    });
  }
}
