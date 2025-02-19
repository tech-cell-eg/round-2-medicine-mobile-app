import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/features/home/presentation/screens/home_screen.dart';
import 'package:medical_store/features/navigation/navigation_cubit.dart';
import 'package:medical_store/features/profile/presentation/screens/profile_screen.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  static List<Widget> pages = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
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
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: AppColors.white,
              unselectedItemColor: Colors.grey,
              selectedItemColor: AppColors.primaryColor,
              currentIndex: state,
              onTap:
                  (index) => context.read<NavigationCubit>().changeTab(index),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
              ],
            ),
          );
        },
      ),
    );
  }
}
