import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/screens/screen2/widgets/my_container.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../repository/fruits.dart';
import '../../utils/colors.dart';
import '../../utils/icons.dart';
import '../screen4/screen4.dart';
import '../screen5/Screen5.dart';
import '../screen5/widgets/appbar_screen5.dart';
import '../screen5/widgets/my_container.dart';


class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  bool isGrid = false;
  bool isOdd = true;
  @override
  void initState() {
    isOdd;
    isGrid;
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset(IconsApp.search),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        hintText: 'Rotten Fruit',
                        hintStyle: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorsApp.darkGreen.withOpacity(.4)),
                      ),
                      onChanged: (fruitName) {
                        setState(() {
                          Screen5.listData = FruitRepository.searchByName(fruitName);
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
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
              height: 98.h,
            ),
            Center(
              child:Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(22),
                    width: 70.w,
                    height: 67.h,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(23),color: ColorsApp.c_EBF4F1),
                    child: Center(
                      child: Image.asset(IconsApp.emoji)
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Text('Item not Found',style: TextStyle(fontWeight: FontWeight.w800,fontSize:18.sp,color: ColorsApp.darkGreen,fontFamily: 'Raleway'),),
                  SizedBox(height: 10.h,),
                  Text('Try search with a different keyword',style: TextStyle(fontWeight: FontWeight.w500,fontSize:12.sp,color: ColorsApp.lightGrey,fontFamily: 'Raleway'),),

                ],
              ),
            ),
            SizedBox(height: 98.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorsApp.darkGreen,
                  ),
                ),
                ZoomTapAnimation(
                    onTap: () {
                      setState(() {
                        isGrid = !isGrid;
                      });
                    },
                    child: SvgPicture.asset(
                        isGrid ? IconsApp.grid : IconsApp.list)),
              ],
            ),
            Expanded(child: isGrid?GridView(
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,childAspectRatio:isOdd?0.5:0.7),
              children:  [...List.generate(Screen5.listData.length, (index) {
                setState(() {index%2==0?isOdd = true:isOdd = false;});
                return MyContainer2(fruit: Screen5.listData[index]);
              })
              ],
            ):ListView(
    physics: const BouncingScrollPhysics(),
    children: [
    ...List.generate(Screen5.listData.length, (index) {
    return MyContainer(fruit: Screen5.listData[index]);
    })
    ],
    ))
          ],
        ),
      ),
    );
  }
}

