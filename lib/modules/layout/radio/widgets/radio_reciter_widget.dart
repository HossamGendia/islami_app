import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/islami_colors.dart';
import 'package:islami_app/core/constants/islami_images.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';

import '../../../../core/constatns/assets.dart';

class RadioReciterWidget extends StatefulWidget {
  final String title;

  const RadioReciterWidget({super.key, required this.title});

  @override
  State<RadioReciterWidget> createState() => _RadioReciterWidgetState();
}

class _RadioReciterWidgetState extends State<RadioReciterWidget> {
  bool play = false;
  bool isMute = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: ColorsPallete.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      // width: double.infinity,
      height: 130,
      child: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              play = !play;
                              isMute = false;
                            });
                          },
                          child: Icon(
                            play
                                ? Icons.pause_rounded
                                : Icons.play_arrow_rounded,
                            color: Colors.black,
                            size: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              if (play) {
                                isMute = !isMute;
                              }
                            });
                          },
                          child: Icon(
                            isMute
                                ? Icons.volume_off_rounded
                                : Icons.volume_up_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
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
