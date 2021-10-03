import 'package:flutter/material.dart';
import 'package:my_first_app/Common/HomeArguments.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
import 'package:my_first_app/Widgets/Form/Actividad/LoginForm.dart';
import 'package:my_first_app/Widgets/Form/MyCheckBox.dart';
import 'package:my_first_app/Widgets/Form/MyDatePicker.dart';
import 'package:my_first_app/Widgets/Form/MyDropdownButton.dart';
import 'package:my_first_app/Widgets/Form/MyForm.dart';
import 'package:my_first_app/Widgets/Form/MyRadio.dart';
import 'package:my_first_app/Widgets/Form/MySwitch.dart';
import 'package:my_first_app/Widgets/Form/MyTextField.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>LoginPageState();

}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: SafeArea(
       child: LoginForm(),
     ),
   );
  }

}