import 'package:admin_usmhub_v1/constants/controllers.dart';
import 'package:admin_usmhub_v1/constants/custome_text.dart';
import 'package:admin_usmhub_v1/helpers/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataUserPage extends StatelessWidget {
  const DataUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveLayout.isSmallScreen(context) ? 16 : 20,
                      left: 20),
                  child: CustomeText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            ))
      ],
    );
  }
}
