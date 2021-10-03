import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyCheckBoxState();
}

class MyCheckBoxState extends State<MyCheckBox> {
  String currentValue = "";
  List<String>courses=["Flutter","Dart","PHP","android","iOS"];
  List<bool> isCheked=[];


  @override
  void initState() {
    isCheked=List<bool>.filled(courses.length, false);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(children: [
      Text(isCheked.toString()),
      ListView.builder(
        shrinkWrap: true,
      itemCount: courses.length,
        itemBuilder: (context,index){
        return CheckboxListTile(
          title: Text(courses[index]),
            value: isCheked[index],
            onChanged: (value){
            setState(() {
              isCheked[index]=value as bool;
            });
            });
        })],);
  }

  onChanged(value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }
}
