import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kButtonColor,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
          onPressed: onPress,
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(
                fontFamily: "Neucha",
                color: kTextColor,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
