import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:medical_store/core/utils/helpers/extensions/screen_utils.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';
import 'package:intl_phone_field/intl_phone_field.dart' show IntlPhoneField;

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Material(
                    elevation: 8,
                    shape: CircleBorder(),
                    shadowColor: Color(0xFFe9e9ee),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(AppIcons.iconsLogo),
                    ),
                  ),
                  verticalSpace(16),
                  Text('Nilkanth Medical', style: AppTextStyles.style26W700),
                ],
              ),
            ),
            verticalSpace(context.screenHeight * 0.15),
            Text(
              'Please Enter your Mobile Number\nto Login/Sign Up',
              style: AppTextStyles.style16W300,
            ),
            verticalSpace(context.screenHeight * 0.05),
            IntlPhoneField(
              decoration: InputDecoration(
                hintText: 'Your number',
                counterText: '',
              ),
              keyboardType: TextInputType.phone,
              initialCountryCode: 'EG',
              onChanged: (phone) {
                if (kDebugMode) {
                  print(phone.completeNumber);
                }
              },
            ),
            verticalSpace(36),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.push(Routes.otp.name);
                },
                child: Text('Continue'),
              ),
            ),

            verticalSpace(AppSizes.md),
          ],
        ),
      ),
    );
  }
}
