import 'package:flutter/material.dart';
import 'package:islami_c8/hadeth_Model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;

    return Stack(children: [
      SizedBox(
        width: double.infinity,
        child: Image.asset('assets/images/main_bg.png'),
      ),
      Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Card(
                  elevation: 30,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Theme.of(context).primaryColor,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(args.content.toString(),
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.bodySmall),
                  )),
            ),
          ))
    ]);
  }
}
