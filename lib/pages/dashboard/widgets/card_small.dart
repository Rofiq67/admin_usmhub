import 'package:admin_usmhub_v1/pages/dashboard/widgets/info_card_small.dart';
import 'package:flutter/material.dart';

class CardSmall extends StatelessWidget {
  const CardSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width / 64,
        ),
        InfoCardSmall(
          title: 'Report Pengaduan',
          value: '8',
          newValue: '+2',
          onTap: () {},
          isActive: true,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 64,
        ),
        InfoCardSmall(
          title: 'Report Aspirasi',
          value: '16',
          newValue: '+10',
          onTap: () {},
          isActive: true,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 64,
        ),
        InfoCardSmall(
          title: 'Data Users',
          value: '16',
          onTap: () {},
          isActive: true,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 64,
        )
      ],
    );
  }
}
