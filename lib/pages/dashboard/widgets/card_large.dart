import 'package:admin_usmhub_v1/constants/style.dart';
import 'package:admin_usmhub_v1/pages/dashboard/widgets/info_card.dart';
import 'package:flutter/material.dart';

class CardLarge extends StatelessWidget {
  const CardLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 64,
        ),
        InfoCard(
          title: "Report Pengaduan",
          value: "15",
          newValue: "+ 2",
          onTap: () {},
          topColor: active,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 64,
        ),
        InfoCard(
          title: "Report Aspirasi",
          value: "15",
          onTap: () {},
          topColor: const Color(0xffFFB800),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 64,
        ),
        InfoCard(
          title: "Data User",
          value: "15",
          onTap: () {},
          topColor: const Color(0xff757F90),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 64,
        ),
      ],
    );
  }
}
