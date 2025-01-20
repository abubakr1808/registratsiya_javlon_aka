import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/companents/button_lleft_text_back.dart';
import 'package:registratsiya_javlon_aka/src/companents/button_text_next.dart';
import 'package:registratsiya_javlon_aka/src/presentation/intro/view/start_screen.dart';
// import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/start_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OndoadingUch extends StatelessWidget {
  const OndoadingUch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.sp,
          vertical: 15.sp,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 19.sp,
                ),
              ),
            ),
            Image.asset(
              "assets/images/Frame 161.png",
            ),
            Spacer(flex: 2),
            Text(
              "Orgonaize your tasks",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 21.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "        You can organize your daily tasks by \n",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16.sp,
                    ),
                  ),
                  TextSpan(
                    text: "adding your tasks into separate categories",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 7,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: ButtonLleftTextBack(),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StartScreen(),
                      ),
                    );
                  },
                  child: ButtonTextNext(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
