import 'package:islami_app/models/zikr_data_model.dart';

abstract class AzkarDataConstraints{
  static List<String> zikrNamesData = [
    "Morning Azkar",
    "Evening Azkar",
    "Sleep Azkar",
    "Wake Up Azkar",
    "Entering Home Azkar",
    "Leaving Home Azkar",
    "Entering Mosque Azkar",
    "Leaving Mosque Azkar",
  ];

  static List<ZikrDataModel> azkarData = List.generate(
    zikrNamesData.length,
        (index) => ZikrDataModel(
      zikrName: zikrNamesData[index],
      zikrImage: "assets/images/zikr${index+1}.png",
    ),
  );


}