import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';
import 'package:medical_store/features/profile/presentation/widgets/profile_header_section.dart';
import 'package:medical_store/features/profile/presentation/widgets/profile_options_list_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.screenPadding / 2,
        ),
        child: Column(
          children: [
            verticalSpace(AppSizes.spaceSectionItems),
            ProfileHeaderSection(),
            verticalSpace(AppSizes.spaceBtwnSections),
            ProfileOptionsListView(),
            verticalSpace(AppSizes.sm),
          ],
        ),
      ),
    );
  }
}
