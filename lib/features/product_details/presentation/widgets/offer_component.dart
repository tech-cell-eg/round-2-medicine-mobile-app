import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';

class OfferComponent extends StatelessWidget {
  const OfferComponent({super.key, required this.preRs, this.postRs});
  final String preRs;
  final String? postRs;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(text: preRs, style: AppTextStyles.style18W700line),
                TextSpan(text: postRs, style: AppTextStyles.style18W700)
              ]),
            ),
            SizedBox(height: 4),
            Text("Etiam mollis ", style: AppTextStyles.style14W400)
          ],
        ),
        Spacer(),
        Row(
          children: [
            SvgPicture.asset(
              AppIcons.iconsAdd,
              color: AppColors.primaryColor,
            ),
            SizedBox(width: 10),
            Text(
              "Add to cart",
              style: AppTextStyles.style14W400brime,
            )
          ],
        )
      ],
    );
  }
}
