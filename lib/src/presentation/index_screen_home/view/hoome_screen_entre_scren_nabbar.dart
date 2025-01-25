import 'package:flutter/material.dart';
import 'package:registratsiya_javlon_aka/src/presentation/index_screen_home/view/home_screen_entre_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreenEntreScreenNavbar extends StatefulWidget {
  const HomeScreenEntreScreenNavbar({super.key});

  @override
  State<HomeScreenEntreScreenNavbar> createState() =>
      _HomeScreenEntreScreenNavbarState();
}

class _HomeScreenEntreScreenNavbarState
    extends State<HomeScreenEntreScreenNavbar> {
  int ekranlaIndexsi = 0;
  DateTime? _selectedDate;

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1500),
      lastDate: DateTime(2200),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: Color(0xff8687E7), // Tanlangan rang
              onPrimary: Color(0xff363636), // Dialogdagi matn rangis
              surface: Color(0xff363636), // Dialog fon rangi
              onSurface: Colors.white, // Sana va boshqa matn rangi
            ),
            dialogBackgroundColor: Color(0xff363636), // Butun dialog foni
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked; // Tanlangan sanani saqlash
      });
    }
  }

  List<Widget> ekranlar = [
    HomeScreenEntreScreen(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: ekranlar[ekranlaIndexsi], // Ekran indexi bo'yicha dinamik o'zgarish
      bottomNavigationBar: Container(
        width: 100.w,
        height: 11.h,
        color: const Color(0xff363636),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => setState(() => ekranlaIndexsi = 0),
                child: Column(
                  children: [
                    Icon(
                      Icons.maps_home_work_rounded,
                      color: const Color.fromARGB(199, 255, 255, 255),
                      size: 20.sp,
                    ),
                    const Text(
                      "Index",
                      style: TextStyle(
                        color: Color.fromARGB(199, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => ekranlaIndexsi = 1),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Icon(
                        Icons.calendar_month_sharp,
                        color: const Color.fromARGB(199, 255, 255, 255),
                        size: 20.sp,
                      ),
                      const Text(
                        "Calendar",
                        style: TextStyle(
                          color: Color.fromARGB(199, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => ekranlaIndexsi = 2),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              width: double.infinity,
                              height: 19.h,
                              decoration: const BoxDecoration(
                                color: Color(0xff363636),
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.sp,
                                  vertical: 10.sp,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Add Task",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                203, 255, 255, 255),
                                            fontSize: 19.5.sp,
                                          ),
                                        ),
                                      ),
                                      TextField(
                                        style: TextStyle(
                                          color: Color(0xfffffffff),
                                        ),
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Do math homework",
                                          hintStyle: TextStyle(
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Description",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                203, 255, 255, 255),
                                            fontSize: 18.sp,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timer_outlined,
                                            color: Color.fromARGB(
                                                199, 255, 255, 255),
                                            size: 20.sp,
                                          ),
                                          SizedBox(width: 2.w),
                                          Icon(
                                            Icons.verified_user_outlined,
                                            color: Color.fromARGB(
                                                199, 255, 255, 255),
                                            size: 20.sp,
                                          ),
                                          SizedBox(width: 2.w),
                                          Icon(
                                            Icons.outlined_flag_sharp,
                                            color: Color.fromARGB(
                                                199, 255, 255, 255),
                                            size: 20.sp,
                                          ),
                                          Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              _pickDate(
                                                  context); // Sana tanlashni chaqirish
                                            },
                                            child: Icon(
                                              Icons.arrow_forward_outlined,
                                              color: Color.fromARGB(
                                                  199, 255, 255, 255),
                                              size: 20.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                      },
                      child: Icon(
                        Icons.add_circle,
                        color: const Color.fromARGB(199, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => ekranlaIndexsi = 3),
                child: Column(
                  children: [
                    Icon(
                      Icons.timer_sharp,
                      color: const Color.fromARGB(199, 255, 255, 255),
                      size: 20.sp,
                    ),
                    const Text(
                      "Focuse",
                      style: TextStyle(
                        color: Color.fromARGB(199, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => ekranlaIndexsi = 4),
                child: Column(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      color: const Color.fromARGB(199, 255, 255, 255),
                      size: 20.sp,
                    ),
                    const Text(
                      "Profile",
                      style: TextStyle(
                        color: Color.fromARGB(199, 255, 255, 255),
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
