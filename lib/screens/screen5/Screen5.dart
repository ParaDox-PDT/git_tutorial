import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/repository/repository_screen5.dart';
import 'package:git_tutorial/screens/screen5/widgets/appbar_screen5.dart';
import 'package:git_tutorial/screens/screen5/widgets/my_container.dart';
import 'package:git_tutorial/utils/icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarScreen5(),
      body: Padding(
        padding:  EdgeInsets.only(left: 35/375*width,right: 35/375*width,top: 20/812*height,bottom: 1),
        child: Column(
          children: [
            Row(
              children: [
                ZoomTapAnimation(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16/375*width,vertical: 15/812*height),
                    width: 236/375*width,
                    height: 50/812*height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFF194B38).withOpacity(.06)
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(IconsApp.search),
                        SizedBox(width: 11/375*width,),
                        const Text("Sweet Fruit",style: TextStyle(fontFamily: "Raleway",fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xFF194B38)),)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 18/375*width,),
                ZoomTapAnimation(
                  onTap: (){},
                  child: Container(
                    width: 50/812*height,
                    height: 50/812*height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFF1F4F3),
                    ),
                    child: Center(child: SvgPicture.asset(IconsApp.options),),
                  ),
                )
              ],
            ),
            SizedBox(height: 25/812*height,),
            Row(
              children: [
                const Text("Found 20 Results",style: TextStyle(fontFamily: "Raleway",fontSize: 22,fontWeight: FontWeight.w700,color: Color(0xFF194B38)),),
                const Spacer(),
                ZoomTapAnimation(onTap: (){},child: SvgPicture.asset(IconsApp.list)),
                SizedBox(width: 5/375*width,),
              ],
            ),
            Expanded(child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ...List.generate(RepositoryScreen5.models.length, (index){
                  return MyContainer(modelScreen5: RepositoryScreen5.models[index]);
                })
              ],
            ))
          ],
        ),
      ),
    );
  }
}
