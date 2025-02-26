import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/app.dart';
import 'package:medical_store/core/bloc/connectivity/connectivity_cubit.dart';
import 'package:medical_store/features/notification/data/service/notification_ser.dart';
import 'package:medical_store/features/product_details/data/service/product_detailes_ser.dart';

void main() {
  // ProductDetailesSer productDetailesSer = ProductDetailesSer();
  // productDetailesSer.getProductDetails(1);
  NotificationSer notificationSer = NotificationSer();
  notificationSer.getNotification();
  runApp(
    BlocProvider(
      create: (context) => ConnectivityCubit(Connectivity()),
      child: const MyApp(),
    ),
  );
}
