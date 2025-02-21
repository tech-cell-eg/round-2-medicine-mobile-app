import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/config/routing/app_router.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/bloc/connectivity/connectivity_cubit.dart';
import 'package:medical_store/core/bloc/connectivity/connectivity_state.dart';
import 'package:medical_store/core/shared/internet_screen/no_internet_dialog.dart';
import 'package:medical_store/core/themes/app_theme.dart';
import 'package:medical_store/core/utils/helpers/observers/keyboard/app_focus_handler.dart';
import 'package:medical_store/core/utils/helpers/observers/keyboard/keyboard_dismiss_observer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static bool _isDialogOpen = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Medical Store',
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      navigatorObservers: [KeyboardDismissObserver()],
      initialRoute: Routes.onboarding.name,
      onGenerateRoute: AppRouter.generateRoute,
      builder: (context, child) {
        return BlocListener<ConnectivityCubit, ConnectivityState>(
          listener: (context, state) {
            if (state is ConnectivityDisconnected) {
              // navigatorKey.currentState?.push(
              //   MaterialPageRoute(builder: (_) => NoInternetScreen()),
              // );
              if (!_isDialogOpen && navigatorKey.currentContext != null) {
                _isDialogOpen = true;
                showDialog(
                  context: navigatorKey.currentContext!,
                  builder: (_) => NoInternetDialog(),
                ).then((value) => _isDialogOpen = false);
              }
            } else if (state is ConnectivityConnected) {
              if (_isDialogOpen &&
                  navigatorKey.currentState?.canPop() == true) {
                navigatorKey.currentState?.pop();
                _isDialogOpen = false;
              }
              navigatorKey.currentState?.popUntil(
                (route) => route.settings.name == null,
              );
            }
          },
          child: AppFocusHandler(child: child ?? const SizedBox()),
        );
      },
    );
  }
}
