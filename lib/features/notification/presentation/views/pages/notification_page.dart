import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/features/notification/data/repository/notification_repo.dart';
import 'package:medical_store/features/notification/data/service/notification_ser.dart';
import 'package:medical_store/features/notification/presentation/cubit/notification_cubit.dart';
import 'package:medical_store/features/notification/presentation/views/widgets/notification_appbar.dart';
import 'package:medical_store/features/notification/presentation/views/widgets/notification_body.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NotificationAppbar(),
      body: BlocProvider(
        create:
            (context) =>
                NotificationCubit(NotificationRepo(NotificationSer()))
                  ..getNotification(),
        child: NotificationBody(),
      ),
    );
  }
}
