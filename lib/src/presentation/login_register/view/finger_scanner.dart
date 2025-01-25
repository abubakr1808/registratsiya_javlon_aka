import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/index_screen_home/view/hoome_screen_entre_scren_nabbar.dart';
import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/register_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FingerScanner extends StatelessWidget {
  const FingerScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      bottomSheet: Container(
        width: double.infinity,
        height: 41.h,
        decoration: BoxDecoration(
          color: Color(0xff363636),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 21.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreenEntreScreenNavbar(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.fingerprint,
                  color: Color(0xffFFFFFF),
                  size: 32.sp,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Color.fromARGB(161, 255, 255, 255),
                    fontSize: 19.sp,
                  ),
                  children: [
                    TextSpan(
                      text: "  Please hold your finger at the\n",
                    ),
                    TextSpan(text: "fingerprint scanner to verify your\n"),
                    TextSpan(
                      text: "                      identity",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cancel",
                      style: TextStyle(
                        color: Color(0xff8687E7),
                        fontSize: 18.sp,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 30.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff8687E7),
                        ),
                        child: Center(
                          child: Text(
                            "Use Password",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
