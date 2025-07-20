import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/constatns/assets.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';
import 'package:islami_app/models/sura_data_model.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routName = 'quran_details_view';

  QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as SuraDataModel;

    if (versesList.isEmpty) loadDataFromAsset(data.suraID);
    return Scaffold(
      backgroundColor: ColorsPallete.quranDetailsColor,
      appBar: AppBar(title: Text(data.suraNameEN), centerTitle: true),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.vectorLeftIcn, height: 90, width: 90),
                    Image.asset(Assets.vectorRightIcn, height: 90, width: 90),
                  ],
                ),
              ),
              Image.asset(Assets.mosqueImg),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                data.suraNameAR,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: ColorsPallete.primaryColor,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Text(
                      '${versesList[index]} [${index + 1}]',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: ColorsPallete.primaryColor,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 4);
                  },
                  itemCount: versesList.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> loadDataFromAsset(String suraID) async {
    String content = await rootBundle.loadString('assets/files/$suraID.txt');
    versesList = content.split('\n');
    setState(() {});
    print(versesList.length);
  }
}
