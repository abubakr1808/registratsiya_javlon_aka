import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/login_register.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.sp,
          vertical: 15.sp,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 22.sp,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "Welcome to UpTodo",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 25.sp,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Please login to your account or create\n          new account to continue",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w400,
                fontSize: 17.sp,
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 20.h,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginRegister(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(9),
                      width: 90.w,
                      height: 6.5.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: containecolor[index],
                        border: Border.all(
                          color: Color(0xff8875FF),
                          width: 0.4.h,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          texlogin[index],
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<String> texlogin = [
  "LOGIN",
  "Create account",
];

List<Color> containecolor = [
  Color(0xff8875FF),
  Color(0xff121212),
];
