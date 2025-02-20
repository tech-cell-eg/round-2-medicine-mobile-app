import 'package:flutter/material.dart';
import 'package:medical_store/config/routing/app_router.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/themes/app_theme.dart';
import 'package:medical_store/core/utils/helpers/observers/keyboard/app_focus_handler.dart';
import 'package:medical_store/core/utils/helpers/observers/keyboard/keyboard_dismiss_observer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFocusHandler(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medical Store',
        themeMode: ThemeMode.light,
        theme: AppTheme.lightTheme,
        navigatorObservers: [KeyboardDismissObserver()],
        initialRoute: Routes.productDetails.name,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
