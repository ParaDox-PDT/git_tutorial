import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_tutorial/screens/screen3/screen3.dart';
import 'package:git_tutorial/screens/screen5/Screen5.dart';
import 'package:git_tutorial/ui/home_screen/widgets/button.dart';

import '../../screens/screen1/screen1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ScreenButton(
                      title: "Screen1",
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                              return Screen1();
                            }));
                      },
                    ),
                    ScreenButton(
                      title: "Screen2",
                      onTap: () {},
                    ),
                    ScreenButton(
                      title: "Screen3",
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const Screen3();
                        }));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ScreenButton(title: "Screen4",onTap: () {}),
                    ScreenButton(title: "Screen5",onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                            return const Screen5();
                          }));
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
