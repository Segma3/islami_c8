import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_c8/hadeth_Details.dart';
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
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
