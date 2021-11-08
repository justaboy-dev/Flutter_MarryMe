import 'package:flutter/material.dart';

import '../constant.dart';

class MenuItem extends StatefulWidget {
  final String tittle;
  final VoidCallback onPress;
  final bool isActive;
  const MenuItem({
    Key? key,
    required this.isActive,
    required this.tittle,
    required this.onPress,
  }) : super(key: key);

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kButtonColor;
    } else if (!widget.isActive && isHover) {
      return kButtonColor.withOpacity(0.5);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: AnimatedContainer(
          curve: Curves.decelerate,
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: _borderColor(), width: 4))),
          child: Text(
            widget.tittle.toUpperCase(),
            style: TextStyle(
                color: kTextColor.withOpacity(0.5),
                fontSize: 20,
                fontFamily: "Neucha",
                fontWeight:
                    widget.isActive ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
