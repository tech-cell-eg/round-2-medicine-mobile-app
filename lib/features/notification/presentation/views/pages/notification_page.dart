import 'package:flutter/material.dart';
import 'package:medical_store/features/notification/presentation/views/widgets/notification_appbar.dart';
import 'package:medical_store/features/notification/presentation/views/widgets/notification_body.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: NotificationAppbar(), body: NotificationBody());
  }
}
