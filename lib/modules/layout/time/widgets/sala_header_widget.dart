import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/islami_colors.dart';
import 'package:islami_app/core/constants/islami_images.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';

import '../../../../core/constatns/assets.dart';

class SalaHeaderWidget extends StatelessWidget {
  const SalaHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 75,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 20, top: 15),
            child: Row(
              children: [
                Text("16 Jul,\n2024", style: theme.textTheme.bodyLarge),
                Spacer(),
                Text(
                  "09 Muh,\n1446",
                  style: theme.textTheme.bodyLarge,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(flex: 2, child: Container(color: Colors.transparent)),
              Expanded(
                flex: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(Assets.cardLogo, width: 45),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 8,
                        ),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorsPallete.primaryColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Pray Time",
                              style: theme.textTheme.titleLarge!.copyWith(
                                color: Color(0xFF584E3C),
                                fontSize: 18,
                                letterSpacing: 0,
                              ),
                            ),
                            Text(
                              "Tuesday",
                              style: theme.textTheme.titleMedium!.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(Assets.cardLogo, width: 45),
                  ],
                ),
              ),
              Expanded(flex: 2, child: Container(color: Colors.transparent)),
            ],
          ),
        ],
      ),
    );
  }
}
