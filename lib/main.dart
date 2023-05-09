import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_c8/home.dart';
import 'package:islami_c8/sura_details.dart';

import 'my_themes.dart';

void main(){
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme ,
      darkTheme: MyThemeData.darkTheme ,
      themeMode: ThemeMode.light,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        Sura_details.routename:(context)=>Sura_details(),

      },
    );
  }
}
