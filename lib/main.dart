import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruits_hub/core/helper_functions/on_generate_routes.dart';
import 'package:fruits_hub/features/on_boarding/presentation/pages/on_boarding_page.dart';
import 'package:fruits_hub/features/splash/presentation/pages/splash_page.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatefulWidget {
  const FruitHub({super.key});

  @override
  State<FruitHub> createState() => _FruitHubState();
}

class _FruitHubState extends State<FruitHub> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashPage.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
