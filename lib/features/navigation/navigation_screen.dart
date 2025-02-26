import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/features/home/presentation/screens/home_screen.dart';
import 'package:medical_store/features/navigation/custom_bottom_navigation_bar.dart';
import 'package:medical_store/features/navigation/navigation_cubit.dart';
import 'package:medical_store/features/notification/presentation/views/pages/notification_page.dart';
import 'package:medical_store/features/profile/presentation/screens/profile_screen.dart';
import 'package:medical_store/features/your_card/presentation/pages/cart_page.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  static List<Widget> pages = [
    HomeScreen(),
    NotificationPage(),
    Container(),
    CartPage(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationCubit(),
      child: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          return Scaffold(
            body: IndexedStack(index: state, children: pages),
            bottomNavigationBar: CustomBottomNavigationBar(state: state),
          );
        },
      ),
    );
  }
}
