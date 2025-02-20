import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_strings.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key, required this.images});
  final List<String> images;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  void dispose() {
    // Dispose the PageController when the widget is disposed
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 14),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: AppColors.colorf8),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 200),
            child: PageView.builder(
              itemBuilder: (context, index) => CachedNetworkImage(
                imageUrl: AppStrings.productUrl,
              ),
              itemCount: widget.images.length,
              onPageChanged: (index) {
                // Update the current page index when the page changes
                setState(() {
                  _currentPageIndex = index;
                });
              },
              controller: _pageController,
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images.asMap().entries.map((entry) {
            int index = entry.key;
            return Padding(
              padding: const EdgeInsets.only(right: 3.0),
              child: Icon(
                Icons.circle,
                size: 8,
                color: _currentPageIndex == index
                    ? AppColors.primaryColor
                    : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
