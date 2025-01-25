import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/index_screen_home/widget/save.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreenEntreScreen extends StatefulWidget {
  const HomeScreenEntreScreen({super.key});

  @override
  State<HomeScreenEntreScreen> createState() => _HomeScreenEntreScreenState();
}

class _HomeScreenEntreScreenState extends State<HomeScreenEntreScreen> {
  bool _isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, color: Color(0xffFFFFFF), size: 22.sp),
                  Text(
                    "Index",
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20.sp),
                  ),
                  Image.asset("assets/images/Ellipse 13.png"),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            if (!_isSaved)
              Column(
                children: [
                  Image.asset(
                    "assets/images/Checklist-rafiki 1.png",
                    width: 50.w,
                    height: 40.h,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "What do you want to do today?",
                    style: TextStyle(
                      color: Color.fromARGB(199, 255, 255, 255),
                      fontSize: 18.5.sp,
                      height: 1.3,
                    ),
                  ),
                  Text(
                    "Tap + to add your tasks",
                    style: TextStyle(
                      color: Color.fromARGB(199, 255, 255, 255),
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            SizedBox(height: 4.h),
            if (!_isSaved)
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isSaved = !_isSaved;
                  });
                },
                child: Container(
                  width: 24.w,
                  height: 4.5.h,
                  decoration: BoxDecoration(
                    color: Color(0xff8687E7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 4.h),
            if (_isSaved) Save(),
          ],
        ),
      ),
    );
  }
}
