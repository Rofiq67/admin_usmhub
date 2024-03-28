import 'package:admin_usmhub_v1/helpers/responsive_layout.dart';
import 'package:admin_usmhub_v1/widgets/header_page.dart';
import 'package:admin_usmhub_v1/widgets/large_screen.dart';
import 'package:admin_usmhub_v1/widgets/side_menu.dart';
import 'package:admin_usmhub_v1/widgets/small_screen.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        // extendBodyBehindAppBar: true,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: const Drawer(
          child: SideMenu(),
        ),
        body: const ResponsiveLayout(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
