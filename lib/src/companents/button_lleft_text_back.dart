import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonLleftTextBack extends StatelessWidget {
  const ButtonLleftTextBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Back",
      style: TextStyle(
        color: Color(0xffFFFFFF),
        fontSize: 19.sp,
      ),
    );
  }
}
