import 'package:admin_usmhub_v1/constants/custome_text.dart';
import 'package:admin_usmhub_v1/constants/style.dart';
import 'package:admin_usmhub_v1/helpers/responsive_layout.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

PreferredSize topNavigationBar(
        BuildContext context, GlobalKey<ScaffoldState> key) =>
    PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 450,
        automaticallyImplyLeading: false,
        //
        leading: !ResponsiveLayout.isSmallScreen(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 38,
                    ),
                    child: Image.asset(
                      'assets/images/logo-usmhub.png',
                      // width: 150,
                      height: 55,
                    ),
                  )
                ],
              )
            : Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        onPressed: () {
                          key.currentState?.openDrawer();
                        },
                        icon: const Icon(
                          Iconsax.element_3,
                          color: Color(0xff3E4095),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ]),
              ),
        //.
        //.
        //.
        // centerTitle: true,
        // title: ResponsiveLayout.isSmallScreen(context)
        //     ? Container(
        //         padding: const EdgeInsets.only(top: 10),
        //         child: CustomeText(
        //           text: 'USMHUB',
        //           color: lightGrey,
        //           size: 20,
        //           weight: FontWeight.bold,
        //         ),
        //       )
        //     : Container(),

        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 20),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                customButton: Row(
                  children: [
                    CustomeText(
                      text: 'Admin',
                      color: lightGrey,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/profil_admin.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                isExpanded: true,
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Item1',
                    child: Row(
                      children: [
                        Icon(Iconsax.logout),
                        SizedBox(width: 8),
                        CustomeText(text: 'Keluar')
                      ],
                    ),
                  ),
                ],
                onChanged: (value) {},
                buttonStyleData: const ButtonStyleData(
                    elevation: 0,
                    overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                dropdownStyleData: DropdownStyleData(
                  width: 124,
                  offset: const Offset(-16, -8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
