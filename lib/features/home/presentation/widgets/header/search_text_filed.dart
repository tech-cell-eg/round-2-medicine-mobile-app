import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(56.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFe9e9ee),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(1, 7),
          ),
        ],
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 16.0),
            border: _buildBorder(),
            enabledBorder: _buildBorder(),
            focusedBorder: _buildBorder(),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: SvgPicture.asset(
                AppIcons.iconsSearchIcon,
                fit: BoxFit.scaleDown,
              ),
            ),
            hintText: 'Search Medicine & Healthcare products',
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(56.0),
      borderSide: BorderSide.none,
    );
  }
}
