// import 'package:flutter/material.dart';
// import 'package:islami_app/core/constants/islami_colors.dart';
//
// import '../../../core/constatns/assets.dart';
//
// class TasbehView extends StatefulWidget {
//   const TasbehView({super.key});
//
//   @override
//   State<TasbehView> createState() => _TasbehViewState();
// }
//
// class _TasbehViewState extends State<TasbehView>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   int counter = 33;
//   int rotationCount = 0;
//
//   List<String> azkar = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
//   int currentZikrIndex = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 100),
//     );
//   }
//
//   void rotateSebha() {
//     if (_controller.isAnimating) return;
//
//     setState(() {
//       counter--;
//       if (counter == 0) {
//         counter = 33;
//         rotationCount++;
//         currentZikrIndex = (currentZikrIndex + 1) % azkar.length;
//       }
//     });
//
//     _controller.forward(from: 0);
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
//       width: double.infinity,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(Assets.tasbehBackground),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Image.asset(
//             Assets.headerLogo,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 30.0),
//             child: Text(
//               "سبّح اسمَ رَبِّكَ الأَعلَى",
//               style: TextStyle(fontSize: 36, color: Colors.white),
//             ),
//           ),
//           Stack(
//             alignment: Alignment.center,
//             children: [
//               Column(
//                 children: [
//                   Text(
//                     azkar[currentZikrIndex],
//                     style: const TextStyle(fontSize: 36, color: Colors.white),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     "$counter",
//                     style: const TextStyle(
//                       fontSize: 36,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//               GestureDetector(
//                 onTap: rotateSebha,
//                 child: AnimatedBuilder(
//                   animation: _controller,
//                   builder: (context, child) {
//                     return Transform.rotate(
//                       angle: _controller.value * 0.1,
//                       child: child,
//                     );
//                   },
//                   child: Image.asset(
//                     Assets.sebha,
//                     height: MediaQuery
//                         .of(context)
//                         .size
//                         .height * 0.5,
//                     // width: double.infinity,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/islami_colors.dart';
import '../../../core/constatns/assets.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int counter = 33;
  int rotationCount = 0;

  List<String> azkar = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  int currentZikrIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
  }

  void rotateSebha() {
    if (_controller.isAnimating) return;

    setState(() {
      counter--;
      if (counter == 0) {
        counter = 33;
        rotationCount++;
        currentZikrIndex = (currentZikrIndex + 1) % azkar.length;
      }
    });

    _controller.forward(from: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.tasbehBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Image.asset(Assets.headerLogo),
          const SizedBox(height: 30),
          const Text(
            "سبّح اسمَ رَبِّكَ الأَعلَى",
            style: TextStyle(fontSize: 28, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: rotateSebha,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 0.1,
                  child: child,
                );
              },
              child: Image.asset(
                Assets.sebha,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
          ),
          const SizedBox(height: 30),
          // ↓↓↓ الذكر المتغير هنا فقط ↓↓↓
          Text(
            azkar[currentZikrIndex],
            style: const TextStyle(fontSize: 36, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            "$counter",
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
