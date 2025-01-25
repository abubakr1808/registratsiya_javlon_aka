import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/login_register/ui/ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ListViewContainer extends StatelessWidget {
  const ListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 23.h,
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            height: 6.h,
            width: 90.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Color(0xff121212),
              border: Border.all(
                color: Color(0xff8875FF),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagesimages[index],
                ),
                SizedBox(width: 1.h),
                Text(
                  texttext[index],
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
