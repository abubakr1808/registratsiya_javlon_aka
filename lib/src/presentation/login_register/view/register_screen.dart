import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/index_screen_home/view/home_screen_entre_screen.dart';
// import 'package:registratsiya_javlon_aka/src/presentation/index_screen_home/view/home_screen_entre_screen.dart';
// import 'package:registratsiya_javlon_aka/src///presentation/login_register/ui/ui.dart';
import 'package:registratsiya_javlon_aka/src/presentation/login_register/widget/coumn_textfield.dart';
import 'package:registratsiya_javlon_aka/src/presentation/login_register/widget/list_view_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isAllFieldsFilled = false;

  void checkFields() {
    setState(() {
      isAllFieldsFilled = usernameController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          confirmPasswordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.sp,
          vertical: 15.sp,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: const Color.fromARGB(185, 255, 255, 255),
                size: 22.sp,
              ),
              SizedBox(height: 2.h),
              Text(
                "Register",
                style: TextStyle(
                  color: const Color.fromARGB(219, 255, 255, 255),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2.h),
              // Username Field
              CoumnTextfield(),
              SizedBox(height: 3.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreenEntreScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 94.w,
                  height: 6.9.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: isAllFieldsFilled
                        ? const Color.fromARGB(255, 255, 255, 255)
                        : const Color.fromARGB(200, 134, 136, 231),
                  ),
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: isAllFieldsFilled
                            ? const Color(0xff000000)
                            : const Color(0xffffffff),
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              // Or Divider
              Center(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Color(0xff979797), fontSize: 17),
                    children: [
                      TextSpan(text: "____________________"),
                      TextSpan(text: "or"),
                      TextSpan(text: "____________________"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              ListViewContainer(),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Color.fromARGB(217, 255, 255, 255),
                      fontSize: 16.sp,
                    ),
                    children: [
                      TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                          color: Color.fromARGB(149, 255, 255, 255),
                        ),
                      ),
                      TextSpan(
                        text: "Login",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.h),
            ],
          ),
        ),
      ),
    );
  }
}
