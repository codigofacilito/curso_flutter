import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/PlayListPage.dart';

class FloatingActionButtonCF extends StatelessWidget {
  VoidCallback voidCallback;
  FloatingActionButtonCF(this.voidCallback);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      onPressed: ()=>voidCallback(),
      child: Icon(
        Icons.add,
        size: 30,
        color: Colors.white,
      ),
      backgroundColor: Colors.orangeAccent,
    );
  }
}
