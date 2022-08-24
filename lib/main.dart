import 'package:flutter/material.dart';
import 'package:flutter_web_app/controllers/menu_controller.dart';
import 'package:flutter_web_app/controllers/navigation_controller.dart';
import 'package:flutter_web_app/views/screens/layout.dart';
import 'package:get/get.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Web App',
        debugShowCheckedModeBanner: false,
        home: Layout());
  }
}
