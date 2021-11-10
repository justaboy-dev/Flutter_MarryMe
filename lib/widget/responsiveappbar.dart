import 'package:flutter/material.dart';

class ResponsiveAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const ResponsiveAppBar({Key? key, required this.scaffoldKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "asset/icon/logo.png",
            width: 90,
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
                  fontSize: 30,
                  fontFamily: "Pacifico",
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openEndDrawer();
            },
            icon: const Icon(Icons.menu_rounded),
            iconSize: MediaQuery.of(context).size.width * 0.065,
          )
        ]);
  }
}
