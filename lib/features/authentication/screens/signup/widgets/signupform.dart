import 'package:e_commerce_english/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.fName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// Terms and conditions
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${TTexts.isAgree} ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: dark ? TColors.white : TColors.primary),
                    ),
                    TextSpan(
                      text: '${TTexts.privacyPolicy} ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: dark ? TColors.white : TColors.primary),
                    ),
                    TextSpan(
                      text: '${TTexts.termsOfUse} ',
                      style: Theme.of(context).textTheme.bodySmall!,
                    ),
                  ],
                ),
              ),
            ],
          ),

          /// Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(const VerificationEmailScreen());
                },
                child: const Text(TTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
