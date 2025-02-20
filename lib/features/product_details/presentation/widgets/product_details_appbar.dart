import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';

class ProductDetailsAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProductDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset(AppIcons.arrowLeftIcon),
      ),
      actions: [
        IconButton(
          onPressed: () {
            context.push(Routes.notification.name);
          },
          icon: SvgPicture.asset(
            AppIcons.iconsNotification,
            // ignore: deprecated_member_use
            color: Colors.black,
            height: 19,
          ),
        ),
        IconButton(
          onPressed: () {
            context.push(Routes.cart.name);
          },
          icon: SvgPicture.asset(
            AppIcons.iconsCartIcon,
            // ignore: deprecated_member_use
            color: Colors.black,
            height: 19,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
