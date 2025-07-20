import 'package:flutter/material.dart';

import '../../../core/constatns/assets.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.tasbehBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
