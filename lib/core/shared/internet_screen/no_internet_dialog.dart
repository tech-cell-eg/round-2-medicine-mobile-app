import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/core/bloc/connectivity/connectivity_cubit.dart';
import 'package:medical_store/core/bloc/connectivity/connectivity_state.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/constants/generated/app_images.dart';
import 'package:medical_store/core/utils/helpers/extensions/screen_utils.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';

class NoInternetDialog extends StatelessWidget {
  const NoInternetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        width: context.screenWidth * 0.8,
        height: context.screenHeight * 0.4,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.spaceBtwnItems,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalSpace(AppSizes.md),
                Flexible(child: Image.asset(AppImages.noInternetImage)),
                verticalSpace(context.screenHeight * 0.04),
                Text('No network connection', style: AppTextStyles.style16W500),
                verticalSpace(context.screenHeight * 0.03),
                TextButton(
                  onPressed: () {
                    context.read<ConnectivityCubit>().checkConnection();
                  },
                  child: BlocBuilder<ConnectivityCubit, ConnectivityState>(
                    builder: (context, state) {
                      if (state is ConnectivityLoading) {
                        return Center(
                          child: const CircularProgressIndicator(
                            color: AppColors.tryAgainColor,
                          ),
                        );
                      }

                      return Text(
                        'Try again',
                        style: AppTextStyles.moreTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
