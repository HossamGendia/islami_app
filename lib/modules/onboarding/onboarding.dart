import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/islami_colors.dart';
import 'package:islami_app/core/constants/islami_images.dart';
import 'package:islami_app/core/constatns/colors_pallete.dart';
import '../../core/constatns/assets.dart';
import '../../core/services/local_storage_keys.dart';
import '../../core/services/local_storage_services.dart';
import '../layout/layout_view.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = "onboarding";
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 5;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 6.0,
      width: isActive ? 24.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive
            ? ColorsPallete.primaryColor
            : ColorsPallete.disabledIndicator,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: _currentPage != _numPages - 1
          ? FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          _completeOnboarding();
        },
        child: Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorsPallete.primaryColor,
            fontSize: 20,
          ),
        ),
      ) : Text(""),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.headerLogo,
                          width: double.infinity,
                        ),
                        Image.asset(Assets.onboarding1),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Text(
                            "Welcome To Islmi App",
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: ColorsPallete.primaryColor),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.headerLogo,
                          width: double.infinity,
                        ),
                        Image.asset(Assets.onboarding2),
                        Text(
                          "Welcome To Islmi",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(color: ColorsPallete.primaryColor),
                        ),
                        Text(
                          "We Are Very Excited To Have You In Our Community",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(
                            color: ColorsPallete.primaryColor,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.headerLogo,
                          width: double.infinity,
                        ),
                        Image.asset(Assets.onboarding3),
                        Text(
                          "Reading the Quran",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(color: ColorsPallete.primaryColor),
                        ),
                        Text(
                          "{  اقْرَأْ وَرَبُّكَ الْأَكْرَمُ  }",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(
                            color: ColorsPallete.primaryColor,
                            // fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.headerLogo,
                          width: double.infinity,
                        ),
                        Image.asset(Assets.onboarding4),
                        Text(
                          "Sebha",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(color: ColorsPallete.primaryColor),
                        ),
                        Text(
                          "Praise the name of your Lord, the Most High",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(
                            color: ColorsPallete.primaryColor,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.headerLogo,
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                        Image.asset(Assets.onboarding5),
                        Text(
                          "Holy Quran Radio",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(color: ColorsPallete.primaryColor),
                        ),
                        Text(
                          "You can listen to the Holy Quran Radio through the application for free and easily",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(
                            color: ColorsPallete.primaryColor,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Spacer(),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: _currentPage == 0
                        ? null
                        : () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                          color: _currentPage == 0
                              ? ColorsPallete.disabledIndicator
                              : ColorsPallete.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  TextButton(
                    onPressed: _currentPage == _numPages - 1
                        ? () {
                      _completeOnboarding();
                    }
                        : () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Text(
                      _currentPage < _numPages - 1 ? 'Next' : 'Finish',
                      style: TextStyle(
                          color: ColorsPallete.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void _completeOnboarding() {
  //   LocalStorageServices.setBool(
  //     LocalStorageKeys.onboardingSeenKey,
  //     true,
  //   );
  //
  //   // if (!mounted) return;
  //
  //   Navigator.pushReplacementNamed(context, HomeScreen.routeName);
  // }
  Future<void> _completeOnboarding() async {
    await LocalStorageServices.setBool(
      LocalStorageKeys.onboardingSeenKey,
      true,
    );

    if (!mounted) return;

    Navigator.pushReplacementNamed(context, LayoutView.routeName);
  }
}