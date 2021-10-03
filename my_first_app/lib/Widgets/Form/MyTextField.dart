import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {

  TextEditingController ctrlName =TextEditingController();
  TextEditingController ctrlAge =TextEditingController();

  String name="";
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(children: [
      Text(name),
      TextField(
        focusNode:node1 ,
      controller: ctrlName,
      autofocus: true,
      keyboardType: TextInputType.text,
    ),
      TextField(
        focusNode: node2,
        controller: ctrlAge,
        autofocus: true,
        keyboardType: TextInputType.text,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.green),
        maxLength: 5,
        //maxLines: 3,
        obscureText: true,
        decoration: InputDecoration(
         // hintText: "Edad",
          //hintStyle: TextStyle(color: Colors.red),
          labelText: "Edad",
          enabled: false,
          prefix: Icon(Icons.favorite),
          disabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.blue,
                  width: 10
              ),
            borderRadius: BorderRadius.circular(30)
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
              width: 10
            )
          ),
          focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.red,
                  width: 10
              )
          )
        ),
      ),
    ElevatedButton(onPressed:(){
      FocusScope.of(context).requestFocus(node2);
      setState(() {
        this.name= ctrlName.text.toString();
      });
    },
        child: Text("Guardar"))],);
  }

}
