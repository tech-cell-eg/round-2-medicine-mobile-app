import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/features/notification/presentation/cubit/notification_cubit.dart';
import 'package:medical_store/features/notification/presentation/views/widgets/notification_component.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationCubit, NotificationState>(
      builder: (context, state) {
        if (state is NotificationLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is NotificationLoaded) {
          return ListView.builder(
            itemCount: state.notifications.length,
            itemBuilder: (context, index) {
              return NotificationComponent(
                date: state.notifications[index].createdAt.toString(),
                title: state.notifications[index].data,
              );
            },
          );
        } else {
          return const Center(child: Text('No Notifications'));
        }
      },
    );
  }
}
