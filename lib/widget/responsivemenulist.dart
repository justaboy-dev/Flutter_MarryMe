import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marryme/controllers/appbar_controller.dart';

import 'menuitem.dart';

class ResponsiveMenuList extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final PageController controller;
  final AppBarController appBarController = Get.put(AppBarController());
  ResponsiveMenuList({
    Key? key,
    required this.scaffoldKey,
    required this.controller,
  }) : super(key: key);

  final AppBarController _controller = Get.put(AppBarController());

  void onItemPress(int index) {
    _controller.setMenuIndex(index);
    appBarController.jumpToPage(index, controller);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Drawer(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white60,
            child: Column(
              children: [
                ...List.generate(
                  _controller.menuItem.length,
                  (index) => MenuItem(
                    tittle: _controller.menuItem[index],
                    onPress: () => onItemPress(index),
                    isActive: index == _controller.selectedIndex,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  iconSize: MediaQuery.of(context).size.width * 0.04,
                )
              ],
            ),
          ),
        ));
  }
}
