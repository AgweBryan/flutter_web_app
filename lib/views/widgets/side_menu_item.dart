import 'package:flutter/material.dart';
import 'package:flutter_web_app/providers/responsive.dart';
import 'package:flutter_web_app/views/widgets/horizontal_menu_item.dart';
import 'package:flutter_web_app/views/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;
  const SideMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isCustumScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }
    return HorizontalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
