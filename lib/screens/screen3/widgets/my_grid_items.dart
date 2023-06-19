import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/colors.dart';
import 'package:git_tutorial/utils/icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../models/fruit.dart';

class MyGridItems extends StatefulWidget {
  const MyGridItems({Key? key, required this.fruit}) : super(key: key);

  final Fruit fruit;

  @override
  State<MyGridItems> createState() => _MyGridItemsState();
}

class _MyGridItemsState extends State<MyGridItems> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149.w,
      height: 245.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        color: ColorsApp.c_F1F4F3,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 19.42.h,
          ),
          Stack(
            children: [
              SizedBox(
                height: 19.42.h,
              ),
              Image.asset(widget.fruit.url),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ZoomTapAnimation(
                      onTap: () {
                        setState(() {
                          check = !check;
                        });
                      },
                      child: Container(
                        width: 25.h,
                        height: 25.h,
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
                  SizedBox(
                    width: 19.42.w,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 182.h,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 17.w,
                    ),
                    Text(
                      widget.fruit.name,
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF194B38)),
                    ),
                  ]),
                  SizedBox(height: 8.h,),
                  Row(
                    children: [
                      SizedBox(width: 17.w,),
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
                      ),
                      const Spacer(),
                      ZoomTapAnimation(
                        onTap: () {},
                        child: Container(
                          // alignment: Alignment.bottomCenter,
                          width: 53.h,
                          height: 39.h,
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
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
