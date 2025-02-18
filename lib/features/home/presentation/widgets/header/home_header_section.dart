import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';
import 'package:medical_store/features/home/presentation/widgets/header/home_app_bar.dart';
import 'package:medical_store/features/home/presentation/widgets/header/search_text_filed.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 28),
          decoration: _buildSectionDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // -- AppBar --
              SafeArea(child: HomeAppBar()),
              verticalSpace(23.0),
              // --User Info--
              Text(
                'Hi, M7H 😎',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.style26W700.copyWith(color: Colors.white),
              ),
              verticalSpace(3),
              Text(
                'Welcome to Nilkanth Medical Store',
                style: AppTextStyles.style16W400.copyWith(color: Colors.white),
              ),
              verticalSpace(38),
            ],
          ),
        ),
        Positioned(
          bottom: -245, //-240
          left: 0,
          child: Image.asset('assets/images/shadow.png'),
        ),
        Positioned(bottom: -30, right: 24, left: 24, child: SearchTextFiled()),
      ],
    );
  }

  BoxDecoration _buildSectionDecoration() {
    return BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    );
  }
}
