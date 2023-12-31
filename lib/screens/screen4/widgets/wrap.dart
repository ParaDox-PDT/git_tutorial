import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_tutorial/screens/screen4/screen4.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';

class MyWrap extends StatefulWidget {
  MyWrap({Key? key, required this.words}) : super(key: key);
  List<String> words;

  @override
  State<MyWrap> createState() => _MyWrapState();
}

class _MyWrapState extends State<MyWrap> {
  int _seletedBtn1 = -1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: [
        ...List.generate(
            widget.words.length,
            (index) => ZoomTapAnimation(
                  onTap: () {
                    setState(() {
                      _seletedBtn1 = index;
                    });
                    initial = Sort.values[index];
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      color: _seletedBtn1 == index
                          ? ColorsApp.c_EBF4F1
                          : ColorsApp.white,
                      borderRadius: BorderRadius.circular(23),
                      border: Border.all(
                        width: 1,
                        color: _seletedBtn1 == index
                            ? ColorsApp.mediumGreen
                            : ColorsApp.lightGrey,
                      ),
                    ),
                    child: Text(
                      widget.words[index],
                      textScaleFactor: 1.2,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: _seletedBtn1 == index
                            ? ColorsApp.mediumGreen
                            : ColorsApp.c_777777,
                      ),
                    ),
                  ),
                ),)
      ],
    );
  }
}
