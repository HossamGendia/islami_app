import 'package:flutter/material.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';
import '../../../../core/constatns/azkar_data_constraints.dart';
import '../../../../models/zikr_data_model.dart';


class AzkarListWidget extends StatelessWidget {
  AzkarListWidget({super.key});

  final List<ZikrDataModel> azkarData = AzkarDataConstraints.azkarData;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.75,
      ), itemBuilder: (context,index) {
        return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          border: Border.all(
            color: ColorsPallete.primaryColor,
            width: 2,
          )
          ),
          child: Column(
            children: [
            Expanded(child: Image.asset(azkarData[index].zikrImage,fit: BoxFit.cover,)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                azkarData[index].zikrName,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                  ),
              ),
            )
            ],
          ),

        );
    },
      itemCount: 8,
    );
  }
}
