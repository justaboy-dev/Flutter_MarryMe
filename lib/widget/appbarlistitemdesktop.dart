import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marryme/controllers/appbar_controller.dart';

import 'defaultbutton.dart';
import 'menuitem.dart';

class AppBarListItemDestop extends StatelessWidget {
  final AppBarController _controller = Get.put(AppBarController());
  final PageController controller;

  AppBarListItemDestop({Key? key, required this.controller}) : super(key: key);

  void onItemPress(int index) {
    _controller.setMenuIndex(index);
    _controller.jumpToPage(index, controller);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
          Image.asset(
            "asset/icon/logo.png",
            width: 100,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(
            width: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
            child: Text(
              "Marry me",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Pacifico",
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          ...List.generate(
            _controller.menuItem.length,
            (index) => MenuItem(
              tittle: _controller.menuItem[index],
              onPress: () => onItemPress(index),
              isActive: index == _controller.selectedIndex,
            ),
          ),
          DefaultButton(
            text: "Get Started",
            onPress: () {},
          )
        ]));
  }
}
