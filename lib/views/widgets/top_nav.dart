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
                  margin: EdgeInsets.only(
                    left: 14,
                  ),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage('assets/favicon.png'),
                        fit: BoxFit.cover),
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
