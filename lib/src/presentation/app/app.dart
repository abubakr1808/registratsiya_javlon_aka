import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/splash_screen_view.dart';
// import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/ondoading.dart';
// import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/start_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/splash_screen_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreenView(),
        // home: Ondoading(),
        // home: StartScreen(),
      ),
    );
  }
}
