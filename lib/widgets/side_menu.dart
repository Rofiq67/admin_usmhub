import 'package:admin_usmhub_v1/constants/controllers.dart';
// import 'package:admin_usmhub_v1/controllers/menu_controller.dart';
import 'package:admin_usmhub_v1/constants/style.dart';
import 'package:admin_usmhub_v1/helpers/responsive_layout.dart';
import 'package:admin_usmhub_v1/routers/routing.dart';
import 'package:admin_usmhub_v1/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          if (ResponsiveLayout.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 48,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                      ),
                      child: Image.asset(
                        'assets/images/logo-usmhub.png',
                        // width: 150,
                        height: 55,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 48,
                    ),
                  ],
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
            endIndent: 40,
            indent: 35,
          ),
          const SizedBox(
            height: 32,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                      itemName: itemName == AuthenticationPageRoute
                          ? "Log Out"
                          : itemName,
                      onTap: () {
                        if (itemName == AuthenticationPageRoute) {
                          //go to authentication page
                        }
                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveitemTo(itemName);
                          Get.back();
                          // go item
                          myNavigationController.navigateTo(itemName);
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
