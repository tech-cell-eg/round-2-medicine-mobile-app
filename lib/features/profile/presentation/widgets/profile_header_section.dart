import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/generated/app_images.dart';

class ProfileHeaderSection extends StatelessWidget {
  const ProfileHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 32,
          backgroundImage: const AssetImage(AppImages.userAvatar),
        ),
        SizedBox(width: AppSizes.lg),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hi, M7H 😎',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Welcome to Nilkanth Medical Store',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
