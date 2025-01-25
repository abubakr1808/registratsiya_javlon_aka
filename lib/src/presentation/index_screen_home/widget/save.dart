import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/index_screen_home/ui/ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Save extends StatelessWidget {
   Save({super.key});

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sp),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.1.sp,
            ),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 23.sp,
                  color: Color(0xffAFAFAF),
                ),
                hintText: "Search for your task...",
                hintStyle: TextStyle(
                  color: Color(0xffAFAFAF),
                  fontSize: 19.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              Container(
                width: 20.w,
                height: 4.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color.fromARGB(37, 255, 255, 255),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16.sp,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xffFFFFFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 100.w,
            height: 31.h,
            child: ListView.builder(
              itemCount: textDoMathHomework.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 90.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xff363636),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.sp,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Barcha elementlarni orasini tenglashtirish
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          color: Color.fromARGB(210, 255, 255, 255),
                          size: 24.sp,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "${textDoMathHomework[index]}\n",
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 17.5.sp,
                                ),
                              ),
                              TextSpan(
                                text: textBusinessCEO[index],
                                style: TextStyle(
                                  color: Color.fromARGB(160, 175, 175, 175),
                                  fontSize: 17.5.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Mana bu yerda ikkinchi container
                        Container(
                          width: 23.w,
                          height: 3.h,
                          decoration: BoxDecoration(
                            color: Color(0xff809CFF),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceEvenly, // Ikon va matnni teng joylashtirish
                            children: [
                              Icon(
                                iconfd[index], // Sizning o'zgaruvchingiz
                              ),
                              Text(
                                texr[index], // Sizning o'zgaruvchingiz
                              ),
                            ],
                          ),
                        ),
                        // Uchinchidan container
                        Container(
                          width: 13.w,
                          height: 3.5.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff8687E7),
                              width: 0.4.w,
                            ),
                            color: Color(0x000000ff),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceAround, // Ikon va matnni tarqatish
                            children: [
                              Icon(
                                Icons.flag_outlined,
                                color: Color.fromARGB(195, 255, 255, 255),
                              ),
                              Text(
                                textont[index], // Sizning o'zgaruvchingiz
                                style: TextStyle(
                                  color: Color(0xffE8E8E8),
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              Container(
                width: 31.w,
                height: 4.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color.fromARGB(37, 255, 255, 255),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Completed",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16.sp,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xffFFFFFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 100.w,
            height: 7.6.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Color(0xff363636),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.sp,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    color: Color.fromARGB(210, 255, 255, 255),
                    size: 24.sp,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Buy Grocery\n",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 17.5.sp,
                          ),
                        ),
                        TextSpan(
                          text: "Today At 16:45",
                          style: TextStyle(
                            color: Color.fromARGB(160, 175, 175, 175),
                            fontSize: 17.5.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
