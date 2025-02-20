import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';
import 'package:medical_store/core/shared/widgets/success_pages/success_page.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';
import 'package:medical_store/features/login/presentation/widgets/otp_input_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter the verify code',
              style: AppTextStyles.style26W700.copyWith(
                color: AppColors.textColor,
              ),
            ),
            verticalSpace(14.0),
            Text(
              'We just send you a verification code via phone +91 9265614292',
              style: AppTextStyles.style14W400,
            ),
            verticalSpace(30.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg),
              child: OTPInputFields(),
            ),
            verticalSpace(40.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => SuccessScreen(
                            image: AppIcons.iconsSuccessIcon,
                            title: 'Phone Number Verified',
                            subtitle:
                                'Congradulations, your phone number has been verified. You can start using the app',
                            onPressed:
                                () => context.pushAndRemoveAll(
                                  Routes.navigation.name,
                                ),
                          ),
                    ),
                    (route) => false,
                  );
                },
                child: Text('SUBMIT CODE'),
              ),
            ),
            verticalSpace(40.0),
            Center(
              child: Column(
                children: [
                  Text(
                    'The verify code will expire in 00:59',
                    style: AppTextStyles.style14W400,
                  ),
                  verticalSpace(16.0),
                  TextButton(onPressed: () {}, child: Text('Resend Code')),
                  verticalSpace(AppSizes.md),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () => context.pop(),
        child: SvgPicture.asset(AppIcons.arrowLeftIcon, fit: BoxFit.scaleDown),
      ),
    );
  }
}
