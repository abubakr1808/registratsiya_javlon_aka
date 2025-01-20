import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/companents/button_lleft_text_back.dart';
import 'package:registratsiya_javlon_aka/src/companents/button_text_next.dart';
import 'package:registratsiya_javlon_aka/src/presentation/intro/view/ondoading_uch.dart';
// import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/ondoading_uch.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OndoadingIkki extends StatelessWidget {
  const OndoadingIkki({super.key});

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
              "assets/images/Frame 162.png",
            ),
            Spacer(flex: 2),
            Text(
              "Create daily routine",
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
                    text: "        In Uptodo  you can create your\n",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16.sp,
                    ),
                  ),
                  TextSpan(
                    text: "personalized routine to stay productive",
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
                        builder: (context) => OndoadingUch(),
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
