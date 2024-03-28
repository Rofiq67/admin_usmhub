import 'package:admin_usmhub_v1/helpers/responsive_layout.dart';
import 'package:admin_usmhub_v1/widgets/horizontal_menu_item.dart';
import 'package:admin_usmhub_v1/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
  const SideMenuItem({super.key, required this.itemName, this.onTap});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isCustomeScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }

    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
