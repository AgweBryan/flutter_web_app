import 'package:flutter/material.dart';
import 'package:flutter_web_app/providers/responsive.dart';

AppBar topNavigationBar(
        {required BuildContext context,
        required GlobalKey<ScaffoldState> key}) =>
    AppBar(
      leading: !Responsive.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 14,
                  ),
                  child: Image.asset(
                    'assets/my_logo.jpeg',
                  ),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.menu,
              ),
            ),
    );
