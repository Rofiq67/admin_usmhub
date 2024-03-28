import 'package:admin_usmhub_v1/helpers/mylocal_navigator.dart';
import 'package:admin_usmhub_v1/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: SideMenu()),
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: localNavigator(),
            ),
          ),
        ],
      ),
    );
  }
}
