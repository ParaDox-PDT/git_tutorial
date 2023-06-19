import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/ui/home_screen/home_screen.dart';
import 'package:git_tutorial/utils/colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/icons.dart';

class AppBarScreen5 extends StatelessWidget implements PreferredSize {
  const AppBarScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 80.h,
      automaticallyImplyLeading: true,
      backgroundColor: ColorsApp.white,
      centerTitle: true,
      leadingWidth: 90,
      leading: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Center(
          child: ZoomTapAnimation(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
            child: Container(
              width: 60,
              height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 21, vertical: 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    color: ColorsApp.c_777777.withOpacity(.2), width: 1),
              ),
              child: Center(
                child: SvgPicture.asset(IconsApp.arrowBack),
              ),
            ),
          ),
        ),
      ),
      title: Text(
        "Search Groceries",
        style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14.spMax,
            fontWeight: FontWeight.w400,
            color: ColorsApp.darkGrey),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 30),
          child: ZoomTapAnimation(
            onTap: () {},
            child: SvgPicture.asset(IconsApp.bagActive),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 80);
}
