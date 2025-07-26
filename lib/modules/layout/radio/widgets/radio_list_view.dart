import 'package:flutter/material.dart';
import 'package:islami_app/modules/layout/radio/widgets/radio_reciter_widget.dart';

import '../../../../core/constatns/radio_data_constraints.dart';

class RadioListView extends StatefulWidget {
  final bool isRadio;

  const RadioListView({super.key, required this.isRadio});

  @override
  State<RadioListView> createState() => _RadioListViewState();
}

class _RadioListViewState extends State<RadioListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return widget.isRadio
            ? RadioReciterWidget(
              title: RadioDataConstraints.recitersData[index].name,
            )
            : RadioReciterWidget(
              title: RadioDataConstraints.radioStationsData[index].name,
            );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 16);
      },
      itemCount:
          widget.isRadio
              ? RadioDataConstraints.recitersData.length
              : RadioDataConstraints.radioStationsData.length,
    );
  }
}
