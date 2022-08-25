import 'package:flutter/material.dart';
import 'package:flutter_web_app/constants/controllers.dart';
import 'package:flutter_web_app/providers/responsive.dart';
import 'package:flutter_web_app/views/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_web_app/views/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_web_app/views/pages/overview/widgets/overview_cards_small.dart';
import 'package:flutter_web_app/views/widgets/custom_text.dart';
import 'package:get/get.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: Responsive.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeitem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            Responsive.isSmallScreen(context)
                ? OverViewCardSmallScreen()
                : Responsive.isCustumScreen(context)
                    ? OverViewCardMediumScreen()
                    : OverviewCardLargeScreen(),
          ],
        ))
      ],
    );
  }
}
