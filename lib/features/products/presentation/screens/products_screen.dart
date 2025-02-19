import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';
import 'package:medical_store/core/shared/widgets/sections/section_heading.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';
import 'package:medical_store/features/products/presentation/widgets/products_list.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
        child: Column(
          children: [
            verticalSpace(AppSizes.spaceBtwnItems),
            SectionHeading(title: 'Products', showMore: false),
            verticalSpace(AppSizes.spaceSectionItems),
            Expanded(child: ProductsList()),
            verticalSpace(AppSizes.md),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () => context.pop(),

        child: SvgPicture.asset(AppIcons.arrowLeftIcon, fit: BoxFit.scaleDown),
      ),
      titleSpacing: 8,
      title: const Text('SubCategory Name'),
    );
  }
}
