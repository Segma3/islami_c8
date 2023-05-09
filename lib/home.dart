import 'package:flutter/material.dart';
import 'package:islami_c8/tabs/ahadeth.dart';
import 'package:islami_c8/tabs/quran.dart';
import 'package:islami_c8/tabs/radio.dart';
import 'package:islami_c8/tabs/sebha.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [QuranTap(),SebhaTap(),AhadethTap(),RadioTap()];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          width: double.infinity,
          child: Image.asset("assets/images/main_bg.png")),
      Scaffold(
        appBar: AppBar(
          title: Text(
            'Islami',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: index,
          onTap: (value) {
            index=value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/quran.png')),
              label: 'quran',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/sebha.png')),
              label: 'sebha',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
              label: 'ahadeth',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/radio.png')),
              label: 'radio',
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ],
        ),
        body: tabs[index],
      ),
    ]);
  }
}
