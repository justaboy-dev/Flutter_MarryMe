import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marryme/components/body.dart';
import 'package:marryme/controllers/appbar_controller.dart';
import 'package:marryme/widget/appbar.dart';
import 'package:marryme/widget/responsive.dart';
import 'package:marryme/widget/responsivemenulist.dart';

import 'aboutus.dart';
import 'gallery.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController pageController = PageController();
  final AppBarController appBarController = Get.put(AppBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Responsive.isMobile(context)
          ? ResponsiveMenuList(
              controller: pageController,
              scaffoldKey: scaffoldKey,
            )
          : null,
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Responsive.isDesktop(context) ? 40 : 0),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: CustomScrollView(
            physics: const NeverScrollableScrollPhysics(),
            slivers: [
              SliverAppBar(
                collapsedHeight: 100,
                pinned: true,
                floating: false,
                expandedHeight: 100,
                foregroundColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                flexibleSpace: MyAppBar(
                  pageController: pageController,
                  scaffoldKey: scaffoldKey,
                ),
              ),
              SliverFillRemaining(
                child: SafeArea(
                  child: Stack(
                    children: [
                      PageView(
                        onPageChanged: (index) =>
                            appBarController.setMenuIndex(index),
                        scrollDirection: Axis.vertical,
                        controller: pageController,
                        children: <Widget>[
                          Body(
                            controller: pageController,
                          ),
                          const Gallery(),
                          const AboutUs(),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.all(40),
                          width: 50,
                          height: 50,
                          child: InkWell(
                            onTap: () {
                              appBarController.jumpToPage(0, pageController);
                            },
                            child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastOutSlowIn,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: const Icon(
                                  Icons.arrow_upward,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
