import 'package:flutter/material.dart';
import 'package:marryme/components/body.dart';
import 'package:marryme/widget/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/images/slide_home.jpg"),
              fit: BoxFit.cover),
        ),
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[MyAppBar(), const Body()],
            ),
          ),
        ),
      ),
    );
  }
}
