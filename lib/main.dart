import 'package:admin_usmhub_v1/controllers/mynavigation_controller.dart';
import 'package:admin_usmhub_v1/site_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:admin_usmhub_v1/controllers/mymenu_controller.dart';

import 'package:google_fonts/google_fonts.dart'; // Assuming this is the file path

void main() {
  Get.put(MyMenuController());
  Get.put(MyNavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xfff5f5f5),
          textTheme: GoogleFonts.mulishTextTheme()
              .apply(bodyColor: const Color(0xff1c1c1c)),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          })),
      home: SiteLayout(),
    );
  }
}
