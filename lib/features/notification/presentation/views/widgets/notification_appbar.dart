import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';

class NotificationAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const NotificationAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(AppIcons.arrowLeftIcon),
      ),
      title: Text('Notifications'),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text('Clear all', style: AppTextStyles.style13W500B),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
