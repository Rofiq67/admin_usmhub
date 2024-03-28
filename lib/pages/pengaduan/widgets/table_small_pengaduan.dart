// import 'package:admin_usmhub_v1/pages/pengaduan/widgets/domains/entities/data_table_pengaduan.dart';
// import 'package:admin_usmhub_v1/pages/pengaduan/widgets/table2.dart';
import 'package:admin_usmhub_v1/pages/pengaduan/widgets/table_pengaduan.dart';
import 'package:flutter/material.dart';

class TableSmallPengaduan extends StatelessWidget {
  const TableSmallPengaduan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 550,
      child: TablePengaduan(),
    );
  }
}
