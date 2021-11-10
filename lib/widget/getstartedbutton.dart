import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
import 'package:marryme/controllers/appbar_controller.dart';

class GetStartedButton extends StatelessWidget {
  final PageController controller;
  final AppBarController appBarController = Get.put(AppBarController());
  GetStartedButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  void onPress() {
    appBarController.setMenuIndex(1);
    appBarController.jumpToPage(1, controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      height: 80,
      width: 250,
      isReverse: true,
      borderColor: Colors.white,
      selectedTextColor: Colors.black,
      borderRadius: 8,
      borderWidth: 2,
      selectedBackgroundColor: Colors.white,
      backgroundColor: Colors.transparent,
      text: "Get Started".toUpperCase(),
      onPress: onPress,
      textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontFamily: "Neucha",
          fontWeight: FontWeight.bold),
    );
  }
}
