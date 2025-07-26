import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/islami_colors.dart';

class SalaCardWidget extends StatelessWidget {
  final String salaName;
  final String salaTime;
  final String pm_am;

  const SalaCardWidget({
    super.key,
    required this.salaName,
    required this.salaTime,
    required this.pm_am,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      // margin: EdgeInsets.symmetric(horizontal: 5),
      width: 100,
      height: 130,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black,
            Colors.transparent, // gold-ish bottom color
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(salaName, style: theme.textTheme.bodyLarge),
          Text(
            salaTime,
            style: theme.textTheme.bodyLarge!.copyWith(fontSize: 26),
          ),
          Text(pm_am, style: theme.textTheme.bodyLarge),
        ],
      ),
    );
  }
}
