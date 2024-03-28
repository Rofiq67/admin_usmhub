import 'package:admin_usmhub_v1/constants/style.dart';
import 'package:admin_usmhub_v1/routers/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MyMenuController extends GetxController {
  static MyMenuController instance = Get.find();
  var activeItem = DashboardPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHover(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case DashboardPageRoute:
        return _customICon(Iconsax.home_2, itemName);
      case PengaduanPageRoute:
        return _customICon(Iconsax.microphone, itemName);
      case AspirasiPageRoute:
        return _customICon(Iconsax.lamp_on, itemName);
      case DataUserPageRoute:
        return _customICon(Iconsax.personalcard, itemName);
      case SettingPageRoute:
        return _customICon(Iconsax.setting_2, itemName);
      case AuthenticationPageRoute:
        return _customICon(Iconsax.logout, itemName);
      default:
        return _customICon(Iconsax.logout, itemName);
    }
  }

  Widget _customICon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: active,
        // weight: 25,
      );
    }

    return Icon(
      icon,
      color: isHover(itemName) ? active : lightGrey,
      // weight: 25,
    );
  }
}
