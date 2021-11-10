import 'package:flutter/material.dart';
import 'package:marryme/widget/responsive.dart';
import 'package:marryme/widget/responsiveappbar.dart';

import 'appbarlistitemdesktop.dart';

class MyAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final PageController pageController;
  const MyAppBar(
      {Key? key, required this.scaffoldKey, required this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 30,
                offset: const Offset(0, -2),
                color: Colors.black.withOpacity(0.16))
          ]),
      child: Responsive(
          primary: AppBarListItemDestop(
            controller: pageController,
          ),
          secondary: ResponsiveAppBar(
            scaffoldKey: scaffoldKey,
          )),
    );
  }
}
