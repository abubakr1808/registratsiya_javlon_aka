import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/intro/view/splash_screen_view.dart';
// import 'package:registratsiya_javlon_aka/src/presentation/intro/view/splash_screen_view.dart';
// import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/finger_scanner.dart';
// import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/register_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreenView(),
        // home: FingerScanner(),
        // home: RegisterScreen(),
      ),
    );
  }
}
