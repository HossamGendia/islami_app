import 'package:flutter/material.dart';
import 'package:islami_app/models/sura_data_model.dart';
import 'package:islami_app/modules/layout/quran/widgets/quran_details_view.dart';
import 'package:islami_app/modules/layout/quran/widgets/recently_item_widget.dart';

class RecentlySuraWidget extends StatelessWidget {
  const RecentlySuraWidget({super.key, required this.suraDataModel});
  final List<SuraDataModel> suraDataModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Most Recently',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        SizedBox(
          height: 155,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, QuranDetailsView.routName, arguments: suraDataModel[index]);
                },
                child: RecentlyItemWidget(
                  suraDataModel: suraDataModel[index],
                ),
              );
            },

            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
            itemCount: suraDataModel.length,
          ),
        ),
      ],
    );
  }
}
