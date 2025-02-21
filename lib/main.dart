import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/app.dart';
import 'package:medical_store/core/bloc/connectivity/connectivity_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ConnectivityCubit(Connectivity()),
      child: const MyApp(),
    ),
  );
}
