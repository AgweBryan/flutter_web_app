import 'package:flutter/material.dart';
import 'package:flutter_web_app/constants/colors.dart';
import 'package:flutter_web_app/constants/controllers.dart';
import 'package:flutter_web_app/providers/responsive.dart';
import 'package:flutter_web_app/routes/routes.dart';
import 'package:flutter_web_app/views/widgets/custom_text.dart';
import 'package:flutter_web_app/views/widgets/logo.dart';
import 'package:flutter_web_app/views/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          Responsive.isSmallScreen(context)
              ? Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 40),
                  Row(
                    children: [
                      SizedBox(width: width / 48),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: Logo(),
                      ),
                      Flexible(
                        child: CustomText(
                          text: 'Dash',
                          size: 20,
                          weight: FontWeight.bold,
                          color: active,
                        ),
                      ),
                      SizedBox(width: width / 48),
                    ],
                  ),
                  SizedBox(height: 40),
                  Divider(
                    color: lightGrey.withOpacity(.1),
                  ),
                ])
              : SizedBox(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                      itemName: itemName == authenticationPageRoute
                          ? 'Log Out'
                          : itemName,
                      onTap: () {
                        if (itemName == authenticationPageRoute) {
                          // TODO: go to auth page
                        }
                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveItem(itemName);
                          if (Responsive.isSmallScreen(context)) {
                            Get.back();
                            // TODO: go to item name Route
                          }
                        }
                      },
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
