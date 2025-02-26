import 'package:dartz/dartz.dart';
import 'package:medical_store/core/errors/failures.dart';
import 'package:medical_store/features/notification/data/model/notification_model.dart';
import 'package:medical_store/features/notification/data/service/notification_ser.dart';

class NotificationRepo {
  NotificationRepo(this.notificationSer);
  final NotificationSer notificationSer;
  Future<Either<Failure, List<NotificationModel>>> getNotification() async {
    try {
      final result = await notificationSer.getNotification();
      return Right(result);
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
