import 'package:flutter/material.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';
import 'package:islami_app/core/constatns/constant.dart';
import 'package:islami_app/core/services/local_storage_services.dart';
import 'package:islami_app/modules/layout/quran/widgets/quran_details_view.dart';
import 'package:islami_app/modules/layout/quran/widgets/recently_sura_widget.dart';
import 'package:islami_app/modules/layout/quran/widgets/sura_list_widget.dart';

import '../../../core/constatns/assets.dart';
import '../../../core/services/local_storage_keys.dart';
import '../../../models/sura_data_model.dart';

class QuranView extends StatefulWidget {
  QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  String searchQuery = '';
  @override
  void initState() {
    // TODO: implement initState
    loadRecentData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.quranBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Assets.headerLogo),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                onChanged: (value) {
                  searchQuery = value;
                  search();
                  setState(() {

                  });
                },
                cursorColor: ColorsPallete.primaryColor,
                decoration: InputDecoration(
                  hintText: "Sura Name",
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: ColorsPallete.primaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: ColorsPallete.primaryColor),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage(Assets.quranIcon),
                      color: ColorsPallete.primaryColor,
                    ),
                  ),
                ),
              ),
            ),

            Visibility(
              visible: searchQuery.isEmpty,
              replacement:SuraListWidget(onSuraTab: onSuraTap,
              suraDataModel: searchSuraList,
              ),
              child: Column(
                children: [
                  recentSuraList.isNotEmpty
                      ? RecentlySuraWidget(suraDataModel: recentSuraList)
                      : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text('No Recent Sura'),
                      ),
                  SuraListWidget(onSuraTab: onSuraTap,
                  suraDataModel: Constants.suraDataLists,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> recentSuraIndexList = [];

  List<SuraDataModel> recentSuraList = [];

  onSuraTap(int index) {
    _cacheSuraIndex(index);
    Navigator.pushNamed(
      context,
      QuranDetailsView.routName,
      arguments: Constants.suraDataLists[index],
    );
  }

  _cacheSuraIndex(int index) {
    var indexstring = index.toString();
    if (recentSuraIndexList.contains(indexstring)) {
      return;
    }

    if (recentSuraIndexList.length == 5) {
      recentSuraIndexList.removeLast();
    }

    recentSuraIndexList.insert(0, indexstring);
    LocalStorageServices.setStringList(
      LocalStorageKeys.recentSuras,
      recentSuraIndexList,
    );
    loadRecentData();
    setState(() {});
  }

  loadRecentData() {
    recentSuraIndexList = [];
    recentSuraList = [];
    recentSuraIndexList =
        LocalStorageServices.getStringList(LocalStorageKeys.recentSuras) ?? [];

    for (var index in recentSuraIndexList) {
      int indexInt = int.parse(index);
      recentSuraList.add(Constants.suraDataLists[indexInt]);
    }
  }

  List<SuraDataModel> searchSuraList = [];

  void search() {
    searchSuraList = [];
    for (var sura in Constants.suraDataLists) {
      if (sura.suraNameEN.toLowerCase().contains(searchQuery.toLowerCase()) ||
          sura.suraNameAR.toLowerCase().contains(searchQuery.toLowerCase())) {
        searchSuraList.add(sura);
      }
    }
  }
}
