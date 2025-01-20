import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/login_register/view/finger_scanner.dart';
import 'package:registratsiya_javlon_aka/src/presentation/login_register/widget/Listview_builder_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  _LoginRegisterState createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  // TextEditingController for username and password fields
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Variables to store colors
  Color containerColor = Color(0xff8687e780); // Old color (with opacity)

  // Function to check if fields are filled
  void checkFields() {
    setState(() {
      if (usernameController.text.isNotEmpty &&
          passwordController.text.isNotEmpty) {
        containerColor = Color(0xff8687E7); // New color without opacity
      } else {
        containerColor = Color(0xff8687e780); // Keep old color with opacity
      }
    });
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.sp,
          vertical: 15.sp,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xffFFFFFF),
                  size: 21.sp,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "Login",
                style: TextStyle(
                  color: Color.fromARGB(202, 255, 255, 255),
                  fontSize: 19.sp,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "Username",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17.sp,
                ),
              ),
              SizedBox(height: 1.h),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff1D1D1D),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: Color(0xff979797),
                    width: 0.5,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 1.3.h),
                    Expanded(
                      child: TextField(
                        controller: usernameController,
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                        onChanged: (_) => checkFields(),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your Username",
                          hintStyle: TextStyle(
                            color: Color(0xff535353),
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              Text(
                "Password",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17.sp,
                ),
              ),
              SizedBox(height: 1.h),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff1D1D1D),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: Color(0xff979797),
                    width: 0.5,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 1.3.h),
                    Expanded(
                      child: TextField(
                        controller: passwordController,
                        style: TextStyle(
                          // color: Color(0xff),
                          color: Color(0xffFFFFFF),
                        ),
                        onChanged: (_) => checkFields(),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "************",
                          hintStyle: TextStyle(
                            color: Color(0xff535353),
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.h),
              GestureDetector(
                onTap: () {
                  if (usernameController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FingerScanner(),
                      ),
                    );
                  } else {
                    // Agar matn kiritilmagan bo'lsa, hech narsa qilmaslik
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('tuldirin textfieldni')),
                    );
                  }
                },
                child: Container(
                  width: 100.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    color: containerColor, // Color changes based on field input
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Color(0xff979797),
                      fontSize: 17.sp,
                    ),
                    children: [
                      TextSpan(text: "____________________"),
                      TextSpan(text: "or"),
                      TextSpan(text: "____________________"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6.h),
              ListviewBuilderContainer(),
              SizedBox(height: 8.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Color.fromARGB(217, 255, 255, 255),
                      fontSize: 16.sp,
                    ),
                    children: [
                      TextSpan(
                        text: "Don’t have an account? ",
                        style: TextStyle(
                          color: Color.fromARGB(149, 255, 255, 255),
                        ),
                      ),
                      TextSpan(
                        text: "Register",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
