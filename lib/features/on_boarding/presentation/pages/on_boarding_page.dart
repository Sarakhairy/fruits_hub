import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/features/on_boarding/presentation/widgets/custom_buttom.dart';
import 'package:fruits_hub/features/on_boarding/presentation/widgets/on_boarding_page_view.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});
  static const String routeName = 'onBoardingPage';

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: OnBoardingPageView(controller: pageController)),
            DotsIndicator(
              decorator: DotsDecorator(
                activeColor: AppColors.primaryColor,
                color: currentPage == 1
                    ? AppColors.primaryColor
                    : AppColors.primaryColor.withOpacity(0.5),
              ),
              dotsCount: 2,
            ),
            const SizedBox(height: 29),
            Visibility(
              visible: currentPage == 1 ? true : false,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomButtom(text: "ابدأ الان", onPressed: () {}),
              ),
            ),
            const SizedBox(height: 43),
          ],
        ),
      ),
    );
  }
}
