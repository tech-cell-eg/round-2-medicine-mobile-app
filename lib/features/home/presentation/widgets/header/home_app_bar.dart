import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';
import 'package:medical_store/core/constants/generated/app_images.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: AppColors.white,
          child: Image.asset(AppImages.userAvatar, fit: BoxFit.scaleDown),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                context.push(Routes.notification.name);
              },
              icon: SvgPicture.asset(AppIcons.iconsNotification),
            ),
            IconButton(
              onPressed: () {
                context.push(Routes.cart.name);
              },
              icon: SvgPicture.asset(AppIcons.iconsCartIcon),
            ),
          ],
        ),
      ],
    );
  }
}
