import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/azkar_data_constraints.dart';
import 'package:islami_app/modules/layout/time/widgets/azkar_list_widget.dart';
import 'package:islami_app/modules/layout/time/widgets/sala_box_widget.dart';
import '../../../core/constatns/assets.dart';


class TimeView extends StatelessWidget {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.timeBackground),
            fit: BoxFit.cover
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            Assets.headerLogo,
          ),
          SalaBoxWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Azkar",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(child: AzkarListWidget()),



        ],
      ),
    );
  }
}
