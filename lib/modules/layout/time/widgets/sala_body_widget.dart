import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/islami_colors.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';
import 'package:islami_app/modules/layout/time/widgets/sala_card_widget.dart';

class SalaBodyWidget extends StatefulWidget {
  const SalaBodyWidget({super.key});

  @override
  State<SalaBodyWidget> createState() => _SalaBodyWidgetState();
}

class _SalaBodyWidgetState extends State<SalaBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsPallete.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: CarouselSlider(
        items: [
          SalaCardWidget(salaName: "Fajr", salaTime: "04:28", pm_am: "AM"),
          SalaCardWidget(salaName: "Sunrise", salaTime: "06:08", pm_am: "AM"),
          SalaCardWidget(salaName: "Dhuhr", salaTime: "01:02", pm_am: "PM"),
          SalaCardWidget(salaName: "Asr", salaTime: "04:38", pm_am: "PM"),
          SalaCardWidget(salaName: "Maghrib", salaTime: "07:54", pm_am: "PM"),
          SalaCardWidget(salaName: "Ishaa", salaTime: "09:24", pm_am: "PM"),
        ],
        options: CarouselOptions(
          height: 130,
          viewportFraction: 0.28,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.1,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
