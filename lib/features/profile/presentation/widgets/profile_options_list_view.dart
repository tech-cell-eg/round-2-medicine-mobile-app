import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';
import 'package:medical_store/features/profile/presentation/widgets/profile_option_card.dart';

class ProfileOptionsListView extends StatelessWidget {
  const ProfileOptionsListView({super.key});
  static const profileCardData = [
    {
      'title': 'Edit Profile',
      'icon': AppIcons.iconsEditProfileIcon,
      'onTap': 'editProfile',
    },
    {'title': 'My Order', 'icon': AppIcons.iconsOrderIcon, 'onTap': 'order'},
    {'title': 'Billing', 'icon': AppIcons.iconsBillingIcon, 'onTap': 'billing'},
    {'title': 'Fag', 'icon': AppIcons.iconsFagIcon, 'onTap': 'fag'},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.all(0),
        itemBuilder:
            (context, index) => ProfileOptionCard(
              title: profileCardData[index]['title']!,
              icon: profileCardData[index]['icon']!,
              //onTap: () => context.push(profileCardData[index]['onTap']!),
            ),
        separatorBuilder:
            (_, index) => Padding(
              padding: const EdgeInsets.only(left: 55.0),
              child: Divider(
                thickness: 2,
                height: 1.2,
                color: const Color.fromARGB(255, 243, 243, 243),
              ),
            ),
        itemCount: profileCardData.length,
      ),
    );
  }
}
