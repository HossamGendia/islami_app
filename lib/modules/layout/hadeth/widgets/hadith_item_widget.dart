import 'package:flutter/material.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';
import 'package:islami_app/core/constatns/theme_manager.dart';
import 'package:islami_app/models/hadith_data_model.dart';
import '../../../../core/constatns/assets.dart';

class HadithItemWidget extends StatelessWidget {
  const HadithItemWidget({super.key, required this.hadithDataModel});

  final HadithDataModel hadithDataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 620,
      // width: 310,
      decoration: BoxDecoration(
        color: ColorsPallete.primaryColor,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(Assets.hadithCardBackGround)),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Assets.leftCornerHadeth, height: 90, width: 90),
                Image.asset(Assets.rightCornerHadeth, height: 90, width: 90),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Text(
              hadithDataModel.hadithTittle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),

          //Image.asset(Assets.mosqueImg),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
              child: Column(
                children: [
                  Text(
                    hadithDataModel.hadithContent,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:islami_app/core/constatns/colors_pallete.dart';
// import 'package:islami_app/models/hadith_data_model.dart';
// import '../../../../core/constatns/assets.dart';
//
// class HadithItemWidget extends StatelessWidget {
//   const HadithItemWidget({super.key, required this.hadithDataModel});
//
//   final HadithDataModel hadithDataModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: ColorsPallete.primaryColor,
//         borderRadius: BorderRadius.circular(16),
//         image: DecorationImage(
//           image: AssetImage(Assets.hadithCardBackGround),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Image.asset(Assets.leftCornerHadeth, height: 90, width: 90),
//                 Image.asset(Assets.rightCornerHadeth, height: 90, width: 90),
//               ],
//             ),
//           ),
//
//           // ✅ عنوان الحديث (زي "الحديث الثاني")
//           Padding(
//             padding: const EdgeInsets.only(top: 0.0),
//             child: Text(
//               hadithDataModel.hadithTittle,
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.headlineSmall,
//             ),
//           ),
//
//           // ✅ صورة المسجد
//           // Padding(
//           //   padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
//           //   child: Image.asset(Assets.mosqueImg),
//           // ),
//
//           // ✅ النص الطويل
//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
//               child: Column(
//                 children: [
//                   Text(
//                     hadithDataModel.hadithContent,
//                     textAlign: TextAlign.center,
//                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
