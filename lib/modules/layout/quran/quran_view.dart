import 'package:flutter/material.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';
import 'package:islami_app/modules/layout/quran/widgets/recently_sura_widget.dart';
import 'package:islami_app/modules/layout/quran/widgets/sura_list_widget.dart';

import '../../../core/constatns/assets.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

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
            RecentlySuraWidget(),
            SuraListWidget(),
          ],
        ),
      ),
    );
  }
}
