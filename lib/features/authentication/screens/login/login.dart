import 'package:e_commerce_english/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_english/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_english/utils/constants/enums.dart';
import 'package:e_commerce_english/utils/constants/text_strings.dart';
import 'package:e_commerce_english/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Logo Title and Sub Title
                  TLoginHeader(dark: dark),

                  const TLoginForm(),

                  /// Create a Divider
                  TFormDivider(dark: dark),

                  /// Footer
                  const TSocialButtons(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
