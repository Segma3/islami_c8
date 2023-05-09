import 'package:flutter/material.dart';
import 'package:islami_c8/Sura_Details_Args.dart';

class Sura_details extends StatelessWidget {
  static const String routename = 'Sura_details';



  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset('assets/images/main_bg.png'),
          ),
          Scaffold(
            appBar: AppBar(
              title: Text(args.suraNames,style: Theme.of(context).textTheme.bodyMedium,),
            ),
          )
        ]);
  }
}
