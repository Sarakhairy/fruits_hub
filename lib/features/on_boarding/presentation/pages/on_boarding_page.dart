import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/features/on_boarding/presentation/widgets/custom_buttom.dart';
import 'package:fruits_hub/features/on_boarding/presentation/widgets/on_boarding_page_view.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});
  static const String routeName = 'onBoardingPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: OnBoardingPageView()),
            DotsIndicator(
              decorator: DotsDecorator(
                activeColor: AppColors.primaryColor,
                color: AppColors.primaryColor.withOpacity(0.5),
              ),
              dotsCount: 2,
            ),
            const SizedBox(height: 29,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomButtom(text: "ابدأ الان", onPressed: () {}),
            ),
            const SizedBox(height: 43,)
          ],
        ),
      ),
    );
  }
}
