import 'package:flutter/material.dart';
import 'package:medical_store/core/utils/helpers/extensions/screen_utils.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';
import 'package:medical_store/features/home/presentation/widgets/categories/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.215,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        padding: EdgeInsets.only(bottom: 8, left: 4, top: 8),
        itemBuilder: (_, index) => const CategoryCard(),
        itemCount: 4,
        separatorBuilder: (_, index) => horizontalSpace(18.0),
      ),
    );
  }
}
