import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';
import 'package:medical_store/core/utils/helpers/extensions/screen_utils.dart';

class ProductDetailsAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProductDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: kToolbarHeight,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8.0)],
        ),
        child: Row(children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          Spacer(),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.card_travel_sharp)),
            ],
          ),
        ]));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
