import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8/Sura_Details_Args.dart';

class Sura_details extends StatefulWidget {
  static const String routename = 'Sura_details';

  @override
  State<Sura_details> createState() => _Sura_detailsState();
}

class _Sura_detailsState extends State<Sura_details> {
  List<String> versus = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (versus.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      SizedBox(
        width: double.infinity,
        child: Image.asset('assets/images/main_bg.png'),
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.suraNames,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Directionality(
                textDirection: TextDirection.rtl,
                child: Center(
                    child: Text(
                  "${versus[index]}",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                )),
              );
            },
            separatorBuilder: (context, index) => Divider(
                  thickness: 2,
                  endIndent: 40,
                  indent: 40,
                ),
            itemCount: versus.length),
      )
    ]);
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = sura.split("\n");
    print(lines);
    versus = lines;
    setState(() {});
  }
}
