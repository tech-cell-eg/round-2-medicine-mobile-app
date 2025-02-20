import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/generated/app_images.dart';
import 'package:medical_store/core/utils/helpers/extensions/screen_utils.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: SizedBox(
        width: context.screenWidth,
        child: Image.asset(
          AppImages.homeBanner,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
