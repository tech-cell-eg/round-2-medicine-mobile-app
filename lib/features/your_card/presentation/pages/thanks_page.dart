import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:medical_store/core/utils/helpers/extensions/screen_utils.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';

class ThanksPage extends StatelessWidget {
  const ThanksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset(AppIcons.iconsSuccessIcon),
            verticalSpace(AppSizes.appBarHeight * 1.5),
            Text(
              "Thank you",
              style: AppTextStyles.style26W700,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: context.screenWidth * 0.72,
              child: Text(
                "adasdaf asdf asd fasd lasdn sdkn",
                style: AppTextStyles.style16W400,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            _continueButton(context),
            verticalSpace(context.screenHeight * 0.07),
          ],
        ),
      ),
    );
  }

  SizedBox _continueButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          context.pushReplacement(Routes.home.name);
        },
        child: const Text('CONTINUE'),
      ),
    );
  }
}
