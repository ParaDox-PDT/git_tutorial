import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_tutorial/repository/fruits.dart';
import 'package:git_tutorial/screens/screen4/widgets/label.dart';
import 'package:git_tutorial/screens/screen4/widgets/price_input.dart';
import 'package:git_tutorial/screens/screen4/widgets/wrap.dart';
import 'package:git_tutorial/utils/colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../screen5/Screen5.dart';

enum sort { popular, newest, lowest, highest }

var initial = sort.popular;
final List<String> words = [
  'Popular',
  'Newest',
  'Lowest Price',
  'Highest Price',
];

final List<String> shipping = ['Regular', 'Free Shipping'];

void showCustomBottomSheetDialog(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: ColorsApp.white,
      showDragHandle: true,
      barrierColor: ColorsApp.darkGreen.withOpacity(.5),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                height: 400.h,
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                color: ColorsApp.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Label(name: 'Sort By'),
                      SizedBox(height: 10.h),
                      MyWrap(words: words),
                      SizedBox(height: 20.h),
                      Label(name: 'Free Shipping'),
                      SizedBox(height: 10.h),
                      MyWrap(words: shipping),
                      SizedBox(height: 20.h),
                      Label(name: 'Price'),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          PriceInput(title: "Lowest"),
                          SizedBox(width: 26.w),
                          PriceInput(title: 'Highest'),
                        ],
                      ),
                      SizedBox(height: 35.h),
                      ZoomTapAnimation(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: LinearGradient(
                                colors: [
                                  ColorsApp.c_26AD71,
                                  ColorsApp.c_32CB4B
                                ],
                                transform: GradientRotation(pi / 48.58),
                              )),
                          child: Text(
                            'Apply',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorsApp.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      });
}
