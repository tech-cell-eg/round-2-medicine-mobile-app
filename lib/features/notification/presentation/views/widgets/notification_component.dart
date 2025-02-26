import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';

class NotificationComponent extends StatelessWidget {
  const NotificationComponent({
    super.key,
    required this.title,
    required this.date,
  });
  final String title, date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: 0.6, height: 1),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 10,
          ),
          leading: SvgPicture.asset(
            AppIcons.iconsNotification,
            // ignore: deprecated_member_use
            color: Colors.black,
          ),
          title: Text(
            'No notifications adsfas fasd fasd as ffd  asf asaa sfd',
            style: AppTextStyles.style14W400B,
          ),
          subtitle: Text(
            'Aug 12, 2020 at 12:08 PM',
            style: AppTextStyles.style13W400,
          ),
        ),
      ],
    );
  }
}
