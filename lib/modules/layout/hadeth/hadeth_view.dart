import 'package:carousel_slider/carousel_options.dart' show CarouselOptions;
import 'package:carousel_slider/carousel_slider.dart' show CarouselSlider;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/layout/hadeth/widgets/hadith_item_widget.dart';

import '../../../core/constatns/assets.dart';
import '../../../models/hadith_data_model.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.hadethBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Image.asset(Assets.headerLogo),
          CarouselSlider(
            items:
                hadithDataList.map((e) {
                  return HadithItemWidget(hadithDataModel: e);
                }).toList(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.6,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  List<HadithDataModel> hadithDataList = [];

  void initState() {
    super.initState();
    loadHadithData();
  }

  Future<void> loadHadithData() async {
    String content = await rootBundle.loadString(Assets.allAhadith);
    List<String> allHadithList = content.split('#');

    for (var element in allHadithList) {
      String singleHadith = element.trim();

      int indexOfTittle = singleHadith.indexOf('\n');

      String hadithTittle = singleHadith.substring(0, indexOfTittle);
      String hadithContent = singleHadith.substring(indexOfTittle + 1);

      HadithDataModel hadithDataModel = HadithDataModel(
        hadithTittle: hadithTittle,
        hadithContent: hadithContent,
      );

      setState(() {
        hadithDataList.add(hadithDataModel);
      });
    }
  }
}
