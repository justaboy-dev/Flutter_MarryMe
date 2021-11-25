import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:marryme/widget/getstartedbutton.dart';
import 'package:marryme/widget/responsive.dart';

class Body extends StatelessWidget {
  final PageController controller;
  const Body({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        curve: Curves.linearToEaseOut,
        width: double.infinity,
        //height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/images/slide_home.jpg"),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      const Color(0xFF3366FF).withOpacity(0.2),
                      const Color(0xFF00CCFF).withOpacity(0.2),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: const [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
            ),
            Container(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height - 170,
                  maxWidth: MediaQuery.of(context).size.width),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Responsive.isMobile(context)
                            ? 0
                            : MediaQuery.of(context).size.width / 8),
                    child: Align(
                      alignment: Responsive.isMobile(context)
                          ? Alignment.center
                          : Alignment.centerLeft,
                      child: GetStartedButton(
                        controller: controller,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Responsive.isMobile(context)
                            ? 0
                            : MediaQuery.of(context).size.width / 8,
                        top: 20,
                        bottom: 20),
                    child: Align(
                      alignment: Responsive.isMobile(context)
                          ? Alignment.center
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DefaultTextStyle(
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "DancingScript",
                              fontSize: 32,
                              fontWeight: FontWeight.w400),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                  "People make it complicated, just enjoy this moments",
                                  textAlign: Responsive.isMobile(context)
                                      ? TextAlign.center
                                      : TextAlign.justify,
                                  speed: const Duration(milliseconds: 100)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
