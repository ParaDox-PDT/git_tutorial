import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/colors.dart';
import 'package:git_tutorial/utils/icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../models/fruit.dart';

class MyContainer2 extends StatefulWidget {
  const MyContainer2({Key? key, required this.fruit}) : super(key: key);

  final Fruit fruit;

  @override
  State<MyContainer2> createState() => _MyContainer2State();
}

class _MyContainer2State extends State<MyContainer2> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: ColorsApp.c_F1F4F3,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 17,
              right: 17,
              child: ZoomTapAnimation(
                  onTap: () {
                    setState(() {
                      check = !check;
                    });
                  },
                  child: Container(
                    width: 27.h,
                    height: 27.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: check ? ColorsApp.lightRed : ColorsApp.white,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        check ? IconsApp.like : IconsApp.dislike,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )),
            ),
            Column(
            children: [
              SizedBox(
                height: 150.w,
                width: 150,
                child: Image.asset(widget.fruit.url),
              ),
              const SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.fruit.name,
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF194B38)),
                  ),
                  SizedBox(height: 10.h),
                  RichText(
                    text: TextSpan(
                      text: "\$ ${widget.fruit.price.toString().split(".")[0]}.",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.lightGreen),
                      children: <TextSpan>[
                        TextSpan(
                            text: widget.fruit.price.toString().split(".")[1],
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorsApp.lightGreen)),
                        TextSpan(
                            text: "/kg",
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorsApp.mediumLightGrey)),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
            Align(
              alignment: Alignment.bottomRight,
              child: ZoomTapAnimation(
                onTap: () {},
                child: Container(
                  // alignment: Alignment.bottomCenter,
                  width: 53.h,
                  height: 41.h,
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
                    child: SvgPicture.asset(IconsApp.plus),
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
//,