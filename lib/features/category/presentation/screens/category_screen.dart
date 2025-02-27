import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';
import 'package:medical_store/core/shared/widgets/sections/section_heading.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';
import 'package:medical_store/features/category/presentation/widgets/categories_list_view.dart';
import 'package:medical_store/features/home/presentation/widgets/products/products_grid_view.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: SvgPicture.asset(
            AppIcons.arrowLeftIcon,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: AppSizes.screenPadding,
          right: AppSizes.screenPadding,
          bottom: AppSizes.lg,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SectionHeading(
                    title: 'Sub Categories',
                    showMore: false,
                  ),
                  verticalSpace(AppSizes.spaceSectionItems),
                  const SubCategoriesListView(),
                  verticalSpace(AppSizes.spaceBtwnSections),
                  SectionHeading(
                    title: 'All Products',
                    showMore: true,
                    onTap: () => context.push(Routes.products.name),
                  ),
                  verticalSpace(AppSizes.spaceSectionItems),
                ],
              ),
            ),
            const ProductGridView(),
          ],
        ),
      ),
    );
  }
}
