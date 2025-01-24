import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: must_be_immutable
class CoumnTextfield extends StatefulWidget {
  const CoumnTextfield({super.key});

  @override
  State<CoumnTextfield> createState() => _CoumnTextfieldState();
}

class _CoumnTextfieldState extends State<CoumnTextfield> {
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
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16.sp),
            ),
            SizedBox(height: 10.sp),
            Container(
              width: 100.w,
              height: 8.h,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff979797)),
              ),
              child: Row(
                children: [
                  SizedBox(width: 2.w),
                  Expanded(
                    child: TextField(
                      controller: usernameController,
                      onChanged: (value) => checkFields(),
                      style: TextStyle(color: Color(0xfffffffe)),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your Username",
                        hintStyle: TextStyle(color: Color(0xff535353)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 2.h),
        // Password Field
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16.sp),
            ),
            SizedBox(height: 10.sp),
            Container(
              width: 100.w,
              height: 8.h,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff979797)),
              ),
              child: Row(
                children: [
                  SizedBox(width: 2.w),
                  Expanded(
                    child: TextField(
                      controller: passwordController,
                      onChanged: (value) => checkFields(),
                      obscureText: true,
                      style: TextStyle(color: Color(0xfffffffe)),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "************",
                        hintStyle: TextStyle(color: Color(0xff535353)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 2.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Confirm Password",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16.sp),
            ),
            SizedBox(height: 10.sp),
            Container(
              width: 100.w,
              height: 8.h,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff979797)),
              ),
              child: Row(
                children: [
                  SizedBox(width: 2.w),
                  Expanded(
                    child: TextField(
                      controller: confirmPasswordController,
                      onChanged: (value) => checkFields(),
                      obscureText: true,
                      style: TextStyle(color: Color(0xfffffffe)),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "************",
                        hintStyle: TextStyle(color: Color(0xff535353)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
