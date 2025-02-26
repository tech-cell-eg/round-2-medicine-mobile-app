import 'package:bloc/bloc.dart';
import 'package:medical_store/features/notification/data/model/notification_model.dart';
import 'package:medical_store/features/notification/data/repository/notification_repo.dart';
import 'package:meta/meta.dart';

part 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit(this.notificationRepo) : super(NotificationInitial());
  final NotificationRepo notificationRepo;
  Future<void> getNotification() async {
    emit(NotificationLoading());
    final response = await notificationRepo.getNotification();
    response.fold(
      (l) => emit(NotificationError(l.errMessage)),
      (r) => emit(NotificationLoaded(r)),
    );
  }
}
