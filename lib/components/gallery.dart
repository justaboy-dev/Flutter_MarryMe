import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marryme/constant.dart';
import 'package:marryme/widget/imagecarousel.dart';
import 'package:marryme/widget/responsive.dart';

class Gallery extends StatelessWidget {
  const Gallery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      color: Colors.white30,
      child: SafeArea(
        child: Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "GALERRY",
                        style: TextStyle(
                            color: kButtonColor,
                            fontFamily: "Neucha",
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                          color: kTextColor,
                          fontFamily: "DancingScript",
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                              "To the world you may be one person, but to one person you may be the world",
                              textAlign: TextAlign.justify,
                              speed: const Duration(milliseconds: 100)),
                          TypewriterAnimatedText(
                              "A man falls in love through his eyes, a woman through her ears.",
                              textAlign: TextAlign.justify,
                              speed: const Duration(milliseconds: 100)),
                          TypewriterAnimatedText(
                              "Don’t stop giving love even if you don’t receive it. Smile and have patience",
                              textAlign: TextAlign.justify,
                              speed: const Duration(milliseconds: 100)),
                          TypewriterAnimatedText(
                              "A geat lover is not one who lover many, but one who loves one woman for life.",
                              textAlign: TextAlign.justify,
                              speed: const Duration(milliseconds: 100)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  width: Responsive.isDesktop(context)
                      ? MediaQuery.of(context).size.width * 0.7
                      : MediaQuery.of(context).size.width,
                  child: CarouselSlider(
                      items: const [
                        ImageCarousel(imagePath: "asset/images/carousel_1.jpg"),
                        ImageCarousel(imagePath: "asset/images/carousel_2.jpg"),
                        ImageCarousel(imagePath: "asset/images/carousel_3.jpg"),
                        ImageCarousel(imagePath: "asset/images/carousel_4.jpg"),
                        ImageCarousel(imagePath: "asset/images/carousel_5.jpg"),
                      ],
                      options: CarouselOptions(
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.vertical,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
