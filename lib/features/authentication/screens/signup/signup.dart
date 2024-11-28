import 'package:e_commerce_english/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_english/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_english/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_english/features/authentication/screens/signup/widgets/signupform.dart';
import 'package:e_commerce_english/utils/constants/colors.dart';
import 'package:e_commerce_english/utils/constants/sizes.dart';
import 'package:e_commerce_english/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Form
              TSignUpForm(dark: dark),
              TFormDivider(dark: dark),
              TSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}
