import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/islami_colors.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';
import 'package:islami_app/modules/layout/time/widgets/sala_body_widget.dart';
import 'package:islami_app/modules/layout/time/widgets/sala_footer_widget.dart';
import 'package:islami_app/modules/layout/time/widgets/sala_header_widget.dart';

class SalaBoxWidget extends StatefulWidget {
  const SalaBoxWidget({super.key});

  @override
  State<SalaBoxWidget> createState() => _SalaBoxWidgetState();
}

class _SalaBoxWidgetState extends State<SalaBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsPallete.titleColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          SalaHeaderWidget(),
          Expanded(child: SalaBodyWidget()),
          SalaFooterWidget(),
        ],
      ),
    );
  }
}
