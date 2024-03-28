// import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class SidebarAdmin extends StatefulWidget {
  const SidebarAdmin({super.key});

  @override
  State<SidebarAdmin> createState() => _SidebarAdminState();
}

class _SidebarAdminState extends State<SidebarAdmin> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color(0xff3E4095),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 120,
              height: 180,
              child: Center(
                child: Image.asset('assets/images/white-usmhub.png'),
              ),
            ),
            //
            //btn features
            ListTile(
              onTap: () {},
              leading: const Icon(
                Iconsax.home_2,
                color: Colors.white,
              ),
              title: const Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'poppins',
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Iconsax.microphone,
                color: Colors.white,
              ),
              title: const Text(
                'Report Pengaduan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'poppins',
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Iconsax.lamp_on,
                color: Colors.white,
              ),
              title: const Text(
                'Report Aspirasi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'poppins',
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Iconsax.personalcard,
                color: Colors.white,
              ),
              title: const Text(
                'Data Users',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'poppins',
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Iconsax.setting_2,
                color: Colors.white,
              ),
              title: const Text(
                'Pengaturan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'poppins',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
