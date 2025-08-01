import 'package:flutter/material.dart';
import 'package:islami_app/modules/layout/hadeth/hadeth_view.dart';
import 'package:islami_app/modules/layout/quran/quran_view.dart';
import 'package:islami_app/modules/layout/radio/radio_view.dart';
import 'package:islami_app/modules/layout/tasbeh/tasbeh_view.dart';
import 'package:islami_app/modules/layout/time/time_view.dart';

import '../../core/constatns/assets.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = '/layout';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    TimeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.quranIcon)),
            label: 'Quran',
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.quranIcon)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.hadithIcon)),
            label: 'Hadith',
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.hadithIcon)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.tasbehIcon)),
            label: 'Tasbeh',
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.tasbehIcon)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.radioIcon)),
            label: 'Radio',
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.radioIcon)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.timeIcon)),
            label: 'Time',
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.radioIcon)),
            ),
          ),
        ],
      ),
    );
  }
}
