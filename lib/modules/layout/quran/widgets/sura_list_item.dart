import 'package:flutter/material.dart';
import 'package:islami_app/models/sura_data_model.dart';
import 'package:islami_app/modules/layout/quran/widgets/quran_details_view.dart';

import '../../../../core/constatns/assets.dart';

class SuraListItem extends StatelessWidget {
  final SuraDataModel suraDataModel;
  final VoidCallback onSuraTab;

  const SuraListItem({super.key, required this.suraDataModel, required this.onSuraTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onSuraTab,
      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.suraNumberIcon),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              suraDataModel.suraID,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraDataModel.suraNameEN,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: Colors.white),
              ),
              Text(
                '${suraDataModel.suraVersesNumber} Verses',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Spacer(),
          Text(
            suraDataModel.suraNameAR,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
