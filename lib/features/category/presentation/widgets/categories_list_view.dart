
import 'package:flutter/material.dart';
import 'package:medical_store/core/utils/helpers/extensions/screen_utils.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';
import 'package:medical_store/features/category/presentation/widgets/sub_category_card.dart';

class SubCategoriesListView extends StatelessWidget {
  const SubCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        padding: const EdgeInsets.only(bottom: 8, left: 4, top: 8),
        itemBuilder: (_, index) => const SubCategoryCard(),
        itemCount: 4,
        separatorBuilder: (_, index) => horizontalSpace(18.0),
      ),
    );
  }
}