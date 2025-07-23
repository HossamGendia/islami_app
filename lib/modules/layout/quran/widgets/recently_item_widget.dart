import 'package:flutter/material.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';
import 'package:islami_app/models/sura_data_model.dart';

import '../../../../core/constatns/assets.dart';

class RecentlyItemWidget extends StatelessWidget {
  const RecentlyItemWidget({super.key, required this.suraDataModel});
  final SuraDataModel suraDataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: ColorsPallete.primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                suraDataModel.suraNameEN,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                suraDataModel.suraNameAR,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                suraDataModel.suraVersesNumber,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: Colors.black),
              ),
            ],
          ),
          Expanded(child: Image.asset(Assets.cardLogo)),
        ],
      ),
    );
  }
}
