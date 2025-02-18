import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/constants/generated/app_animations.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:medical_store/core/utils/helpers/extensions/screen_utils.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpace(context.screenHeight * 0.17),
            Flexible(
              child: Lottie.asset(
                AppAnimations.onboardinganimation,
                width: 330,
              ),
            ),
            verticalSpace(MediaQuery.sizeOf(context).height * 0.07),
            Text(
              'View and buy\n Medical online',
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingTitleStyle,
            ),
            verticalSpace(20),
            Text(
              'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. integre',
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingSubTitleStyle,
            ),
            verticalSpace(context.screenHeight * 0.15),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  context.pushReplacement(Routes.login.name);
                },
                child: Text('Next'),
              ),
            ),
            verticalSpace(context.screenHeight * 0.03),
          ],
        ),
      ),
    );
  }
}
