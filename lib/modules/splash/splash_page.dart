import 'package:flutter/material.dart';
import 'package:paybill/shared%20/%20themes/app_colors.dart';
import 'package:paybill/shared%20/%20themes/app_images.dart';
import 'package:paybill/shared%20/auth/auth_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.union)),
          Center(child: Image.asset(AppImages.logoFullPb)),
        ],
      ),
    );
  }
}
