import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marryme/controllers/appbar_controller.dart';

import 'defaultbutton.dart';
import 'menuitem.dart';

class MyAppBar extends StatelessWidget {
  final AppBarController _controller = Get.put(AppBarController());

  MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                    blurRadius: 30,
                    offset: const Offset(0, -2),
                    color: Colors.black.withOpacity(0.16))
              ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "asset/icon/logo.png",
                width: 100,
                alignment: Alignment.topCenter,
              ),
              const SizedBox(
                width: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Marry me",
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: "Pacifico",
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              ...List.generate(
                _controller.menuItem.length,
                (index) => MenuItem(
                  tittle: _controller.menuItem[index],
                  onPress: () => _controller.setMenuIndex(index),
                  isActive: index == _controller.selectedIndex,
                ),
              ),
              DefaultButton(
                text: "Get Started",
                onPress: () {},
              )
            ],
          ),
        ));
  }
}
