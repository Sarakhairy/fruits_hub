import 'package:flutter/material.dart';
import 'package:fruits_hub/features/on_boarding/presentation/pages/on_boarding_page.dart';
import 'package:svg_flutter/svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static const routeName = 'splash';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [SvgPicture.asset("assets/images/plant.svg")],
            ),
            SvgPicture.asset("assets/images/logo.svg"),
            SvgPicture.asset(
              "assets/images/splash_bottom.svg",
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }

  void excuteNavigation() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, OnBoardingPage.routeName);
    });
  }
}
