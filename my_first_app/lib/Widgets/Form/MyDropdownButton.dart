import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDropdownButtonState();
}

class MyDropdownButtonState extends State<MyDropdownButton> {
  String? currentValue = "";
  List<String>courses=["Flutter","Dart","PHP","android","iOS"];


  @override
  void initState() {
    currentValue = courses[0];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DropdownButton(
      value:currentValue ,
      dropdownColor: Colors.red,
      icon: Icon(Icons.music_note),
      onChanged: (String? value){
        if(value!=null && currentValue!=value)
          setState(() {
          this.currentValue=value;
        });
      },
        items: courses.map((String course) =>
            DropdownMenuItem<String>(value:course ,child: Text(course))).toList());
  }

  onChanged(value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }
}
