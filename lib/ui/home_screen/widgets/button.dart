import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';

class ScreenButton extends StatelessWidget {
  ScreenButton({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        // alignment: Alignment.bottomCenter,
        width: 100.w,
        height: 50.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomRight: Radius.circular(23)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              ColorsApp.c_26AD71,
              ColorsApp.c_32CB4B,
            ],
          ),
        ),
        child: Center(
          child: Text(title,style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: ColorsApp.white),),
        ),
      ),
    );
  }
}
