import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:marryme/constant.dart';
import 'package:marryme/widget/responsive.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            Expanded(
              flex: Responsive.isDesktop(context) ? 4 : 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Column(
                  children: [
                    Text(
                      "About Us".toUpperCase(),
                      style: TextStyle(
                          color: kButtonColor,
                          fontSize: Responsive.isDesktop(context) ? 45 : 28,
                          fontFamily: "Neucha",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: Responsive.isDesktop(context) ? 100 : 5),
                    DefaultTextStyle(
                      style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 30 : 20,
                          fontFamily: "DancingScript",
                          fontWeight: FontWeight.w400),
                      textAlign: Responsive.isDesktop(context)
                          ? TextAlign.justify
                          : TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            "We specialize in wedding photography, corporate, family and senior portraits, often traveling to your destination to capture the perfect moment in the perfect place.",
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: Responsive.isDesktop(context) ? 6 : 8,
              child: Padding(
                padding: Responsive.isDesktop(context)
                    ? const EdgeInsets.all(100.0)
                    : const EdgeInsets.only(left: 10, right: 20, bottom: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      Positioned(
                        top: 25,
                        left: 20,
                        bottom: -25,
                        right: -20,
                        child: Container(
                          //margin: const EdgeInsets.only(top: 30, left: 30),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("asset/images/aboutus.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
