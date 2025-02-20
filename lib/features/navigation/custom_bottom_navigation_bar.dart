import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/features/navigation/navigation_cubit.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.state});
  final int state;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.white,
      unselectedItemColor: Colors.grey,
      selectedItemColor: AppColors.primaryColor,
      currentIndex: state,
      onTap: (index) => context.read<NavigationCubit>().changeTab(index),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
    );
  }
}
