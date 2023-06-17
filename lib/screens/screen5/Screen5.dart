import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/icons.dart';

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
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
          child: Row(
            children: [
              Container(
                width: 60/375*width,
                height: 40/812*height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Color(0xFF777777).withOpacity(.2),width: 1),
                ),
                child: Center(child: SvgPicture.asset(IconsApp.arrowBack),),
              ),
              Spacer(),
              Text("Search Groceries",style: TextStyle(fontFamily: "Montserrat",fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF4B4B4B)),),
              Spacer(),
              SvgPicture.asset(IconsApp.bagActive),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 35,right: 35,top: 20,bottom: 1),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16/375*width,vertical: 15/812*height),
                  width: 240/375*width,
                  height: 50/812*height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xFF194B38).withOpacity(.06)
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(IconsApp.search),
                      SizedBox(width: 11/375*width,),
                      Text("Sweet Fruit",style: TextStyle(fontFamily: "Raleway",fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xFF194B38)),)
                    ],
                  ),
                ),
                SizedBox(width: 18/375*width,),
                Container(
                  width: 50/812*height,
                  height: 50/812*height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xFFF1F4F3),
                  ),
                  child: Center(child: SvgPicture.asset(IconsApp.options),),
                )
              ],
            ),
            SizedBox(height: 25/812*height,),
            Row(
              children: [
                Text("Found 20 Results",style: TextStyle(fontFamily: "Raleway",fontSize: 22,fontWeight: FontWeight.w700,color: Color(0xFF194B38)),),
                Spacer(),
                SvgPicture.asset(IconsApp.list),
                SizedBox(width: 5,),
              ],
            ),
            Expanded(child: ListView(
              children: [
                
              ],
            ))
          ],
        ),
      ),
    );
  }
}
