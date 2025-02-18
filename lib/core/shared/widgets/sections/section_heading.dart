import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';

class SectionHeading extends StatelessWidget {
  final String title;
  final bool? showMore;
  final Function()? onTap;
  const SectionHeading({
    super.key,
    required this.title,
    this.showMore = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.style18W600,
          ),
        ),
        horizontalSpace(AppSizes.spaceBtwnItems),
        if (showMore!)
          GestureDetector(
            onTap: onTap,
            child: Text(
              'More',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.moreTextStyle,
            ),
          ),
      ],
    );
  }
}
