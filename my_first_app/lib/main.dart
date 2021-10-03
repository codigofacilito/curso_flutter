import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/LoginPage.dart';
import 'package:my_first_app/Pages/PlayListPage.dart';
import 'package:my_first_app/Values/ColorsApp.dart';
import 'package:my_first_app/Values/ThemeApp.dart';
import 'package:my_first_app/generated/l10n.dart';
import 'package:sizer/sizer.dart';

import 'Common/MyKeys.dart';
import 'Pages/MyHomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp() : super(key: myAppKey);

  @override
  State<StatefulWidget> createState() => MyAppState();
// This widget is the root of your application.
}

class MyAppState extends State<MyApp> {

  ThemeMode themeMode = ThemeMode.light;

  Widget build(BuildContext context) {
    return Sizer(builder:
        (context,orientation,deviceType)=>MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate
          ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MyRouters.generateRoute,
      initialRoute: ROUTE_PLAY_LIST,
      themeMode: themeMode,
      darkTheme: ThemeData(
          textTheme: textThemeDark,
          scaffoldBackgroundColor: backgroundDark,
          iconTheme:iconThemeData1 ,
          primaryIconTheme: iconThemeData1,
          accentIconTheme: iconThemeDark
      ),
      theme: ThemeData(
       textTheme: textTheme,
       scaffoldBackgroundColor: background,
       iconTheme:iconThemeData1 ,
       primaryIconTheme: iconThemeData1,
       accentIconTheme: iconThemeData2
      ),
    ));
  }

  changeTheme(ThemeMode themeMode){
    setState(() {
      this.themeMode=themeMode;
    });
  }
}

