import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/intro/view/ondoading.dart';
// import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/ondoading.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Ondoading(),
          ),
        );
      },
    );
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Center(
        child: Image.asset(
          "assets/images/Group 173.png",
        ),
      ),
    );
  }
}
