import 'package:admin_usmhub_v1/constants/controllers.dart';
import 'package:admin_usmhub_v1/constants/custome_text.dart';
import 'package:admin_usmhub_v1/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
  const HorizontalMenuItem(
      {super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: menuController.isHover(itemName)
              ? lightGrey.withOpacity(1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHover(itemName) ||
                    menuController.isActive(itemName),
                child: Container(
                  width: 6,
                  height: 40,
                  color: active,
                ),
              ),
              SizedBox(
                width: width / 80,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              //
              if (!menuController.isActive(itemName))
                Flexible(
                  child: CustomeText(
                    text: itemName,
                    color:
                        menuController.isHover(itemName) ? active : lightGrey,
                  ),
                )
              else
                (Flexible(
                    child: CustomeText(
                  text: itemName,
                  color: active,
                  size: 18,
                  weight: FontWeight.bold,
                ))),
            ],
          ),
        ),
      ),
    );
  }
}
