import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget primary;
  final Widget secondary;
  const Responsive({Key? key, required this.primary, required this.secondary})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 860;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 860;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contranst) {
      if (isDesktop(context)) {
        return primary;
      } else {
        return secondary;
      }
    });
  }
}
