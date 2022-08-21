import 'package:flutter/material.dart';
import 'package:flutter_web_app/views/screens/layout.dart';
import 'package:get/get.dart';

void main() {
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
