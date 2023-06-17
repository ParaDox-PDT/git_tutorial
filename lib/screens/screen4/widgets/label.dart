import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';

class Label extends StatelessWidget {
  Label({Key? key, required this.name}) : super(key: key);
  String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textScaleFactor: 1.0,
      style: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w700,
        color: ColorsApp.darkGreen,
      ),
    );
  }
}
