import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';

class ProfileOptionCard extends StatelessWidget {
  const ProfileOptionCard({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });
  final String title;
  final String icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.style16W400.copyWith(color: AppColors.textColor),
      ),
      leading: SvgPicture.asset(icon, fit: BoxFit.scaleDown),
      onTap: onTap,
      trailing: const Icon(Icons.arrow_forward_ios, size: 14),
    );
  }
}
