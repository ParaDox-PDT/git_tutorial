import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/repository/fruits.dart';
import 'package:git_tutorial/repository/repository_screen5.dart';
import 'package:git_tutorial/screens/screen4/screen4.dart';
import 'package:git_tutorial/screens/screen5/widgets/appbar_screen5.dart';
import 'package:git_tutorial/screens/screen5/widgets/my_container.dart';
import 'package:git_tutorial/utils/colors.dart';
import 'package:git_tutorial/utils/icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      appBar: const AppBarScreen5(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20.h),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50.h,
                    child: TextField(
                      autofocus: false,
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: ColorsApp.darkGreen,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorsApp.darkGreen.withOpacity(.06),
                        prefixIcon: Container(
                          padding: EdgeInsets.all(12),
                          child: SvgPicture.asset(IconsApp.search),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        hintText: "Search fresh groceries",
                        hintStyle: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorsApp.darkGreen.withOpacity(.4)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    showCustomBottomSheetDialog(context);
                  },
                  child: Container(
                    width: 50.h,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: ColorsApp.c_F1F4F3,
                    ),
                    child: Center(
                      child: SvgPicture.asset(IconsApp.options),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Found 20 Results",
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorsApp.darkGreen,
                  ),
                ),
                ZoomTapAnimation(
                    onTap: () {}, child: SvgPicture.asset(IconsApp.list)),
              ],
            ),
            SizedBox(height: 25.h),
            Expanded(
                child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ...List.generate(RepositoryScreen5.models.length, (index) {
                  return MyContainer(fruit: FruitRepository.data[index]);
                })
              ],
            ))
          ],
        ),
      ),
    );
  }
}
