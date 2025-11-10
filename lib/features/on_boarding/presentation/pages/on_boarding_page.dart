import 'package:flutter/material.dart';
import 'package:fruits_hub/features/on_boarding/presentation/widgets/on_boarding_page_view.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});
  static const String routeName = 'onBoardingPage';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: OnBoardingPageView())
          ],
        ),
      ),
    );
  }
}
