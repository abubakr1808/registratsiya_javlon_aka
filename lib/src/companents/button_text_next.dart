import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonTextNext extends StatelessWidget {
  const ButtonTextNext({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14.w,
      height: 5.9.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xff8875ff),
      ),
      child: Center(
        child: Text(
          "NEXT",
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
