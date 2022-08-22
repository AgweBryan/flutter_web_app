import 'package:flutter/material.dart';
import 'package:flutter_web_app/providers/responsive.dart';
import 'package:flutter_web_app/views/widgets/larg_screen.dart';
import 'package:flutter_web_app/views/widgets/small_screen.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      // body:LargeScreen(),
      // body: SmallScreen(),
      body: Responsive(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
