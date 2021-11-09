import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marryme/components/body.dart';
import 'package:marryme/controllers/appbar_controller.dart';
import 'package:marryme/widget/appbar.dart';
import 'package:marryme/widget/responsive.dart';
import 'package:marryme/widget/responsivemenulist.dart';

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
        margin: const EdgeInsets.all(15),
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
                  child: PageView(
                    onPageChanged: (index) =>
                        appBarController.setMenuIndex(index),
                    scrollDirection: Axis.vertical,
                    controller: pageController,
                    children: <Widget>[
                      const Body(),
                      const Gallery(),
                      Container(
                        height: 300,
                        color: Colors.blue,
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
