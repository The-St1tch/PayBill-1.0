import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:paybill/modules/login/login_controller.dart';
import 'package:paybill/shared%20/%20themes/app_colors.dart';
import 'package:paybill/shared%20/%20themes/app_images.dart';
import 'package:paybill/shared%20/%20themes/app_text_styles.dart';
import 'package:paybill/shared%20/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.width * 0.65,
              color: AppColors.purple,
            ),
            Positioned(
                top: 60,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.person1,
                  width: 350,
                  height: 350,
                )),
            Positioned(
              bottom: size.height * 0.1,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logopb),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 60, right: 60),
                    child: Text(
                      "Organize seus boletos do melhor jeito",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 40, right: 40),
                    child: SocialLoginButton(
                      onTap: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
