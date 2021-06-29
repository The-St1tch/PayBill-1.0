import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paybill/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:paybill/modules/home/home_page.dart';
import 'package:paybill/modules/insert_boleto/insert_boleto_page.dart';
import 'package:paybill/modules/login/login_page.dart';
import 'package:paybill/modules/splash/splash_page.dart';
import 'package:paybill/shared%20/%20themes/app_colors.dart';
import 'package:paybill/shared%20/models/user_models.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.background));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Bill',
      theme: ThemeData(
          primarySwatch: Colors.purple, primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
            ),
        "/login": (context) => LoginPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage(),
        "/insert_boleto": (context) => InsertBoletoPage(
            barcode: ModalRoute.of(context) != null
                ? ModalRoute.of(context)!.settings.arguments.toString()
                : null)
      },
    );
  }
}
