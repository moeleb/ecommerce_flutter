import 'package:e_commerce_english/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_english/features/authentication/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:e_commerce_english/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_english/features/authentication/screens/onboarding/widgets/onboardingskip.dart';
import 'package:e_commerce_english/features/authentication/screens/onboarding/widgets/onboaridingnavigation.dart';
import 'package:e_commerce_english/utils/constants/image_strings.dart';
import 'package:e_commerce_english/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Images
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onboardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onboardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onboardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// SKIP
          const onBoardingSkip(),

          /// Dot Navigation Smooth Page Indicator
          const OnBoardingNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
