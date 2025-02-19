import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/constants/generated/app_icons.dart';
import 'package:medical_store/features/notification/widgets/notification_appbar.dart';
import 'package:medical_store/features/notification/widgets/notification_body.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: NotificationAppbar(), body: NotificationBody());
  }
}
