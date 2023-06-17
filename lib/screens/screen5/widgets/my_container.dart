import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/models/model_screen5.dart';
import 'package:git_tutorial/utils/icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({Key? key, required this.modelScreen5}) : super(key: key);

  final ModelScreen5 modelScreen5;

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15 / 812 * height),
      child: Stack(children: [
        Container(
          height: check? 127/812*height : 124 / 812 * height,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: const Color(0xFFF1F4F3),
          ),
          child: Row(
            children: [
              Center(
                child: Image.asset(widget.modelScreen5.image),
              ),
              SizedBox(
                height: 10 / 812 * height,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.modelScreen5.name,
                    style: const TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF194B38)),
                  ),
                  SizedBox(
                    height: 10 / 812 * height,
                  ),
                  RichText(
                    text: TextSpan(
                      text: widget.modelScreen5.price,
                      style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4CBB5E)),
                      children: <TextSpan>[
                        TextSpan(
                            text: widget.modelScreen5.priceResidual,
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF4CBB5E))),
                        const TextSpan(
                            text: "/kg",
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF9C9C9C))),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            children: [
              SizedBox(
                height: 22 / 812 * height,
              ),
              ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    check = !check;
                  });
                },
                child:check? Container(
                  width: 27/375*width,
                  height: 27/375*width,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF1F4F3),
                  ),
                  child: Container(
                    width: 24 / 375 * width,
                    height: 24 / 375 * width,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      border: Border.all(color: const Color(0xFFEC534A).withOpacity(.3))
                    ),
                    child: Center(
                      child: SvgPicture.asset("assets/svg/on_like.svg"),
                    ),
                  ),
                ) :
                Container(
                  width: 24 / 375 * width,
                  height: 24 / 375 * width,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: check ? Colors.red : Colors.white,
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/svg/off_like.svg"),
                  ),
                ),
              ),
              SizedBox(
                height: 36 / 812 * height,
              ),
              ZoomTapAnimation(
                onTap: () {},
                child: Container(
                  width: 53 / 375 * width,
                  height: 41 / 812 * height,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(23)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF26AD71),
                        Color(0xFF32CB4B),
                      ],
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(IconsApp.plus),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
