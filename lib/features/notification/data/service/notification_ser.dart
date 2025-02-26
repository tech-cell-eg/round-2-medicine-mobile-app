import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:medical_store/core/constants/end_points.dart';
import 'package:medical_store/features/notification/data/model/notification_model.dart';

class NotificationSer {
  Dio? dio;
  NotificationSer() {
    dio = Dio(
      BaseOptions(baseUrl: EndPoints.baseUrl, receiveDataWhenStatusError: true),
    );
  }
  Future<List<NotificationModel>> getNotification() async {
    final response = await dio!.get(EndPoints.notifications);
    dynamic data = response.data;
    data = jsonDecode(data);
    return (data['data'] as List)
        .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
