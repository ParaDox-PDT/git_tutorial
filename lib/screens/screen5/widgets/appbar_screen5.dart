import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/icons.dart';

class AppBarScreen5 extends StatelessWidget implements PreferredSize{
  const AppBarScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return AppBar(
      elevation: 0,
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      title: Padding(
        padding:  EdgeInsets.only(left: 20/375*width,right: 20/375*width,top: 10/812*height),
        child: Row(
          children: [
            ZoomTapAnimation(
              onTap: (){},
              child: Container(
                width: 60/375*width,
                height: 40/812*height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFF777777).withOpacity(.2),width: 1),
                ),
                child: Center(child: SvgPicture.asset(IconsApp.arrowBack),),
              ),
            ),
            const Spacer(),
            const Text("Search Groceries",style: TextStyle(fontFamily: "Montserrat",fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF4B4B4B)),),
            const Spacer(),
            ZoomTapAnimation(onTap: (){} ,child: SvgPicture.asset(IconsApp.bagActive)),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  const Size(double.infinity, 80);
}
