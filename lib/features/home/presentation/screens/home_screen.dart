import 'package:flutter/material.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/shared/widgets/sections/section_heading.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';
import 'package:medical_store/features/home/presentation/widgets/banners/home_banner.dart';
import 'package:medical_store/features/home/presentation/widgets/categories/categories_list_view.dart';
import 'package:medical_store/features/home/presentation/widgets/header/home_header_section.dart';
import 'package:medical_store/features/home/presentation/widgets/products/products_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: AppSizes.appBarHeight + 5,
                  ),
                  child: const HomeHeaderSection(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.screenPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SectionHeading(
                        title: 'Top Categories',
                        showMore: false,
                      ),
                      verticalSpace(AppSizes.spaceSectionItems),
                      const CategoriesListView(),
                      verticalSpace(AppSizes.spaceBtwnSections - 10),
                      const HomeBanner(),
                      verticalSpace(AppSizes.spaceBtwnSections),
                      SectionHeading(
                        title: 'Deals of the Day',
                        onTap: () {
                          context.push(Routes.products.name);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.screenPadding,
              vertical: AppSizes.spaceSectionItems,
            ),
            sliver: const ProductGridView(),
          ),
        ],
      ),
    );
  }
}
