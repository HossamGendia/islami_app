import 'package:flutter/material.dart';
import 'package:islami_app/core/constatns/theme_manager.dart';
import 'package:islami_app/core/services/local_storage_services.dart';
import 'package:islami_app/modules/layout/layout_view.dart';
import 'package:islami_app/modules/layout/quran/widgets/quran_details_view.dart';
import 'package:islami_app/modules/splash/splash_view.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageServices.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeManager.themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
      },
    );
  }
}
