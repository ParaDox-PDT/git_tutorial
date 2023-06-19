import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/repository/fruits.dart';
import 'package:git_tutorial/screens/screen3/widgets/my_grid_items.dart';
import 'package:git_tutorial/screens/screen4/screen4.dart';
import 'package:git_tutorial/screens/screen5/widgets/appbar_screen5.dart';
import 'package:git_tutorial/screens/screen5/widgets/my_container.dart';
import 'package:git_tutorial/utils/colors.dart';
import 'package:git_tutorial/utils/icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Screen3 extends StatefulWidget {
  const Screen3( {Key? key,}) : super(key: key);
  static var listData = FruitRepository.data;

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  // var listData = FruitRepository.data;
  bool isGrid = false;

  int resultsCount = 0;

  @override
  void initState() {
    super.initState();
    resultsCount = Screen3.listData.length;
  }

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
                        hintText: "Search fresh groceries",
                        hintStyle: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorsApp.darkGreen.withOpacity(.4)),
                      ),
                      onChanged: (fruitName) {
                        setState(() {
                          Screen3.listData =
                              FruitRepository.searchByName(fruitName);
                          resultsCount = Screen3.listData.length;
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
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Found $resultsCount Results",
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
            SizedBox(height: 25.h),
            Expanded(
                child: isGrid
                    ? ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          ...List.generate(Screen3.listData.length, (index) {
                            return MyContainer(fruit: Screen3.listData[index]);
                          })
                        ],
                      )
                    : GridView.builder(
                  itemCount: Screen3.listData.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 149/245,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return MyGridItems(fruit: Screen3.listData[index]);
                        }))
          ],
        ),
      ),
    );
  }
}
