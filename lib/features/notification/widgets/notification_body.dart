import 'package:flutter/material.dart';
import 'package:medical_store/features/notification/widgets/notification_component.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder:
          (context, index) => NotificationComponent(
            title: 'No notifications',
            date: 'You have no notifications',
          ),
    );
  }
}
