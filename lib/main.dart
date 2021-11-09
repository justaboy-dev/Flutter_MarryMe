import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marryme/components/homepage.dart';
import 'package:marryme/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Marry Me - Love The Way You Like',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kprimaryColor,
        ),
        home: HomePage());
  }
}
