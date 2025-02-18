import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/utils/helpers/extensions/screen_utils.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subtitle;
  final VoidCallback? onPressed;
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset(image),
            verticalSpace(AppSizes.appBarHeight * 1.5),
            Text(
              title,
              style: AppTextStyles.style26W700,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: context.screenWidth * 0.72,
              child: Text(
                subtitle,
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

  SizedBox _continueButton(context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: onPressed, child: const Text('CONTINUE')),
    );
  }
}
