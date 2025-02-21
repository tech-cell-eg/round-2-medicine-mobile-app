import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/config/routing/app_router.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/bloc/connectivity/connectivity_cubit.dart';
import 'package:medical_store/core/bloc/connectivity/connectivity_state.dart';
import 'package:medical_store/core/themes/app_theme.dart';
import 'package:medical_store/core/utils/helpers/dialog/dialog_helper.dart';
import 'package:medical_store/core/utils/helpers/observers/keyboard/app_focus_handler.dart';
import 'package:medical_store/core/utils/helpers/observers/keyboard/keyboard_dismiss_observer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: DialogHelper.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Medical Store',
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      navigatorObservers: [KeyboardDismissObserver()],
      initialRoute: Routes.onboarding.name,
      onGenerateRoute: AppRouter.generateRoute,
      builder: (context, child) {
        return BlocListener<ConnectivityCubit, ConnectivityState>(
          listener: (context, state) async {
            if (state is ConnectivityDisconnected) {
              await DialogHelper.showNoInternetDialog(context);
            } else if (state is ConnectivityConnected) {
              await DialogHelper.closeNoInternetDialog(context);
            }
          },
          child: AppFocusHandler(child: child ?? const SizedBox()),
        );
      },
    );
  }
}
