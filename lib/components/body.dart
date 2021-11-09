import 'package:flutter/material.dart';
import 'package:marryme/widget/responsive.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        //height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/images/slide_home.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height - 170,
              maxWidth: MediaQuery.of(context).size.width / 2),
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
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(12)),
                    child: TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Text(
                            "Get Started".toUpperCase(),
                            textAlign: Responsive.isDesktop(context)
                                ? TextAlign.justify
                                : TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: "Neucha",
                                fontWeight: FontWeight.bold),
                          ),
                        )),
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
                    child: Text(
                      "People make it complicated, just enjoy this moments",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: "DancingScript",
                          fontWeight: FontWeight.w400),
                      textAlign: Responsive.isMobile(context)
                          ? TextAlign.center
                          : TextAlign.justify,
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
