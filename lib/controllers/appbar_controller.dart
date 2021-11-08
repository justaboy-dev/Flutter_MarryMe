import 'package:get/get.dart';

class AppBarController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItem => ['Home', 'Gallery', 'About Us'];
  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
