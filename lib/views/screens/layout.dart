import 'package:flutter/material.dart';
import 'package:flutter_web_app/providers/responsive.dart';
import 'package:flutter_web_app/views/widgets/larg_screen.dart';
import 'package:flutter_web_app/views/widgets/small_screen.dart';
import 'package:flutter_web_app/views/widgets/top_nav.dart';

class Layout extends StatelessWidget {
  Layout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, _scaffoldKey),
      body: Responsive(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
