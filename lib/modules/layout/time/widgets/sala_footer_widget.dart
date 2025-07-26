import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/islami_colors.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';

class SalaFooterWidget extends StatefulWidget {
  const SalaFooterWidget({super.key});

  @override
  State<SalaFooterWidget> createState() => _SalaFooterWidgetState();
}

class _SalaFooterWidgetState extends State<SalaFooterWidget> {
  bool isMute = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsPallete.primaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isMute = !isMute;
                });
              },
              child: Icon(
                isMute ? Icons.volume_off_rounded : Icons.volume_up_rounded,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Next Pray",
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: Color(0xFF584E3C),
                ),
              ),
              Text(
                " - 02:32",
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
