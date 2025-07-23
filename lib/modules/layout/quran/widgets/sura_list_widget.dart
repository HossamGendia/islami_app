import 'package:flutter/material.dart';
import 'package:islami_app/models/sura_data_model.dart';
import 'package:islami_app/modules/layout/quran/widgets/sura_list_item.dart';

import '../../../../core/constatns/constant.dart';

class SuraListWidget extends StatelessWidget {
  const SuraListWidget({super.key, required this.onSuraTab, required this.suraDataModel});
  final void Function(int) onSuraTab;
  final List<SuraDataModel> suraDataModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sura List', style: Theme.of(context).textTheme.bodyLarge),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 10),
            itemBuilder: (context, index) {
              return SuraListItem(
                onSuraTab: () => onSuraTab(int.parse(suraDataModel[index].suraID)-1),
                suraDataModel: suraDataModel[index],
              );
            },
            separatorBuilder: (context, index) {
              return Divider(indent: 40, endIndent: 40);
            },
            itemCount: suraDataModel.length,
          ),
        ],
      ),
    );
  }
}
