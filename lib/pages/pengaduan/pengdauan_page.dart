import 'package:admin_usmhub_v1/constants/controllers.dart';
import 'package:admin_usmhub_v1/constants/custome_text.dart';
import 'package:admin_usmhub_v1/helpers/responsive_layout.dart';
import 'package:admin_usmhub_v1/pages/pengaduan/widgets/tabellarge.dart';
// import 'package:admin_usmhub_v1/pages/pengaduan/widgets/table2.dart';
import 'package:admin_usmhub_v1/pages/pengaduan/widgets/table_pengaduan.dart';
import 'package:admin_usmhub_v1/pages/pengaduan/widgets/table_small_pengaduan.dart';
import 'package:admin_usmhub_v1/pages/pengaduan/widgets/tablesmall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:admin_usmhub_v1/pages/pengaduan/data/models/pengaduan_model.dart';

class PengaduanPage extends StatelessWidget {
  const PengaduanPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<Pengaduan> data = [
      Pengaduan(
        number: 1,
        title: 'Kerusakan Fasilitas Kampus',
        location: 'Gedung A, Lantai 3',
        goal: 'Perbaikan fasilitas yang rusak',
        evidence: 'assets/images/parkir_usm.png',
        date: DateTime.now(),
        description: 'Keran air di toilet bocor dan menyebabkan genangan air.',
      ),
      Pengaduan(
        number: 2,
        title: 'Keamanan Kampus yang Kurang Memadai',
        location: 'Parkiran Kampus',
        goal: 'Peningkatan keamanan di area kampus',
        evidence: 'assets/images/parkir_usm.png',
        date: DateTime.now().subtract(const Duration(days: 2)),
        description: 'Sering terjadi kehilangan motor di parkiran kampus.',
      ),
      Pengaduan(
        number: 3,
        title: 'Kesulitan Akses Internet di Perpustakaan',
        location: 'Perpustakaan Kampus',
        goal: 'Perbaikan koneksi internet di perpustakaan',
        evidence: '',
        date: DateTime.now().subtract(const Duration(days: 5)),
        description:
            'Jaringan internet di perpustakaan sering terputus dan lambat.',
      ),
    ];

    return Column(
      children: [
        Obx(
          () => Row(
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
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: ResponsiveLayout.isLargeScreen(context)
              ? TabelLarge(
                  columns: [
                    'Number',
                    'Title',
                    'Location',
                    'Goal',
                    'Evidence',
                    'Date',
                    'Description'
                  ],
                  data: [
                    [
                      1,
                      'Kerusakan Fasilitas Kampus',
                      'Gedung A, Lantai 3',
                      'Perbaikan fasilitas yang rusak',
                      'assets/images/parkir_usm.png',
                      DateTime.now(),
                      'Keran air di toilet bocor dan menyebabkan genangan air.'
                    ],
                    [
                      2,
                      'Keamanan Kampus yang Kurang Memadai',
                      'Parkiran Kampus',
                      'Peningkatan keamanan di area kampus',
                      'assets/images/parkir_usm.png',
                      DateTime.now().subtract(Duration(days: 2)),
                      'Sering terjadi kehilangan motor di parkiran kampus.'
                    ],
                    [
                      3,
                      'Kesulitan Akses Internet di Perpustakaan',
                      'Perpustakaan Kampus',
                      'Perbaikan koneksi internet di perpustakaan',
                      '',
                      DateTime.now().subtract(Duration(days: 5)),
                      'Jaringan internet di perpustakaan sering terputus dan lambat.'
                    ],
                  ],
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: TabelSmall(
                    columns: [
                      'Number',
                      'Title',
                      'Location',
                      'Goal',
                      'Evidence',
                      'Date',
                      'Description'
                    ],
                    data: [
                      [
                        1,
                        'Kerusakan Fasilitas Kampus',
                        'Gedung A, Lantai 3',
                        'Perbaikan fasilitas yang rusak',
                        'assets/images/parkir_usm.png',
                        DateTime.now(),
                        'Keran air di toilet bocor dan menyebabkan genangan air.'
                      ],
                      [
                        2,
                        'Keamanan Kampus yang Kurang Memadai',
                        'Parkiran Kampus',
                        'Peningkatan keamanan di area kampus',
                        'assets/images/parkir_usm.png',
                        DateTime.now().subtract(Duration(days: 2)),
                        'Sering terjadi kehilangan motor di parkiran kampus.'
                      ],
                      [
                        3,
                        'Kesulitan Akses Internet di Perpustakaan',
                        'Perpustakaan Kampus',
                        'Perbaikan koneksi internet di perpustakaan',
                        '',
                        DateTime.now().subtract(Duration(days: 5)),
                        'Jaringan internet di perpustakaan sering terputus dan lambat.'
                      ],
                    ],
                  ),
                ),
        ),
      ],
    );
  }
}
