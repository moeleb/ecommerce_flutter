import 'package:e_commerce_english/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_commerce_english/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.lightTheme,
      home: const OnboardingScreen(),
    );
  }
}
