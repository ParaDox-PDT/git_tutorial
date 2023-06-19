import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/colors.dart';
import 'package:git_tutorial/utils/icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          ZoomTapAnimation(
            onTap: () {},
            child: Container(
              width: 75.w,
              height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 21, vertical: 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border: Border.all(
                    color: ColorsApp.c_777777.withOpacity(.2), width: 1),
              ),
              child: Center(
                child: SvgPicture.asset(IconsApp.arrowBack),
              ),
            ),
          ),
          SizedBox(width: 267.w,),
        ],
        ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 20.h),
        child: Column(
          children: [
            SizedBox(
              width: 315.w,
              height: 60.h,
              child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorsApp.darkGreen.withOpacity(.06),
                    hintText: "Search fresh groceries",
                    suffixIcon: Container(padding:EdgeInsets.all(12),child: SvgPicture.asset(IconsApp.search)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 15.h,),
            Container(
              margin: EdgeInsets.only(right: 220.w),
              child: Text(
                "Last Seen",
                style: TextStyle(color: ColorsApp.darkGreen,fontWeight: FontWeight.w600,fontSize: 20.w),
              ),
            ),
            SizedBox(height: 15.h,),
            Row(
                children: [
                  ZoomTapAnimation(
                    child: Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorsApp.c_F1F4F3,
                      ),
                      child: Image.asset(IconsApp.mango),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  ZoomTapAnimation(
                    child: Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorsApp.c_F1F4F3,
                      ),
                      child: Image.asset(IconsApp.avacado),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  ZoomTapAnimation(
                    child: Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorsApp.c_F1F4F3,
                      ),
                      child: Image.asset(IconsApp.bread),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  ZoomTapAnimation(
                    child: Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorsApp.c_F1F4F3,
                      ),
                      child: Image.asset(IconsApp.strawberry),
                    ),
                  )
                ],
              ),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Text(
                  " Title",
                  style: TextStyle(color: ColorsApp.darkGreen,fontSize: 20.w,fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 216.w,),
                TextButton(onPressed: (){}, child: Text("remove",style: TextStyle(color: ColorsApp.lightRed),))
              ],
            ),
            Row(
              children: [
                ZoomTapAnimation(
                  child: Container(
                    padding: EdgeInsets.only(left: 16.w,top: 7.h),
                    width: 68.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsApp.c_F1F4F3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Mango",
                      style: TextStyle(fontSize:12.w,fontWeight: FontWeight.w300,color: ColorsApp.mediumGrey),
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
                ZoomTapAnimation(
                  child: Container(
                    padding: EdgeInsets.only(left: 16.w,top: 7.h),
                    width: 76.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsApp.c_F1F4F3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Avocado",
                      style: TextStyle(fontSize:12.w,fontWeight: FontWeight.w300,color: ColorsApp.mediumGrey),
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
                ZoomTapAnimation(
                  child: Container(
                    padding: EdgeInsets.only(left: 16.w,top: 7.h),
                    width: 91.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsApp.c_F1F4F3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Sweet Fruit",
                      style: TextStyle(fontSize:12.w,fontWeight: FontWeight.w300,color: ColorsApp.mediumGrey),
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                ZoomTapAnimation(
                  child: Container(
                    padding: EdgeInsets.only(left: 16.w,top: 7.h),
                    width: 63.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsApp.c_F1F4F3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Grape",
                      style: TextStyle(fontSize:12.w,fontWeight: FontWeight.w300,color: ColorsApp.mediumGrey),
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
                ZoomTapAnimation(
                  child: Container(
                    padding: EdgeInsets.only(left: 16.w,top: 7.h),
                    width: 63.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsApp.c_F1F4F3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Bread",
                      style: TextStyle(fontSize:12.w,fontWeight: FontWeight.w300,color: ColorsApp.mediumGrey),
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
                ZoomTapAnimation(
                  child: Container(
                    padding: EdgeInsets.only(left: 16.w,top: 7.h),
                    width: 84.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsApp.c_F1F4F3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Pineapple",
                      style: TextStyle(fontSize:12.w,fontWeight: FontWeight.w300,color: ColorsApp.mediumGrey),
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                ZoomTapAnimation(
                  child: Container(
                    padding: EdgeInsets.only(left: 16.w,top: 7.h),
                    width: 83.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsApp.c_F1F4F3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Raw meat",
                      style: TextStyle(fontSize:12.w,fontWeight: FontWeight.w300,color: ColorsApp.mediumGrey),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
