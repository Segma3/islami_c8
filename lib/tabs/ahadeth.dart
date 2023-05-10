import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8/hadeth_Details.dart';
import 'package:islami_c8/hadeth_Model.dart';

class AhadethTap extends StatefulWidget {
  @override
  State<AhadethTap> createState() => _AhadethTapState();
}

class _AhadethTapState extends State<AhadethTap> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }

    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/hadeth_bg.png'),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, HadethDetails.routeName,
                            arguments: allAhadeth[index]);
                      },
                      child: Text(
                        allAhadeth[index].title,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ));
                },
                separatorBuilder: (context, index) => Divider(
                      thickness: 2,
                      endIndent: 40,
                      indent: 40,
                    ),
                itemCount: allAhadeth.length),
          ],
        ),
      ),
    );
  }

  void loadHadethFile() {
    rootBundle.loadString('assets/files/ahadeth.txt').then((value) {
      List<String> hadethContent = value.split('#');
      for (int i = 0; i < hadethContent.length; i++) {
        List<String> hadethLines = hadethContent[i].trim().split("\n");
        String title = hadethLines[0];
        print(title);
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        print(content);
        print('--------------------------------');
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        setState(() {});
      }
    }).catchError((error) {
      print(error);
    });
  }
}
