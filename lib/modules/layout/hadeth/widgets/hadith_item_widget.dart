import 'package:flutter/material.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';

import '../../../../core/constatns/assets.dart';

class HadithItemWidget extends StatelessWidget {
  const HadithItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 620,
      // width: 310,
      color: ColorsPallete.primaryColor,
      //borderRadius : BorderRadius.circular(16),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Assets.hadithCardBackGround)),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Image.asset(Assets.mosqueImg),
            ],
          ),
        ],
      ),
    );
  }
}
