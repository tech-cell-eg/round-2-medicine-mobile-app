part of 'notification_cubit.dart';

@immutable
sealed class NotificationState {}

final class NotificationInitial extends NotificationState {}

final class NotificationLoaded extends NotificationState {
  final List<NotificationModel> notifications;
  NotificationLoaded(this.notifications);
}

final class NotificationError extends NotificationState {
  final String errMessage;
  NotificationError(this.errMessage);
}

final class NotificationLoading extends NotificationState {}
