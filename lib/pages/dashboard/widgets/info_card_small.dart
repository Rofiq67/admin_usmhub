import 'package:admin_usmhub_v1/constants/custome_text.dart';
import 'package:admin_usmhub_v1/constants/style.dart';
import 'package:flutter/material.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final bool isActive;

  final String newValue;
  final void Function()? onTap;
  const InfoCardSmall(
      {super.key,
      required this.title,
      required this.value,
      this.newValue = '',
      this.isActive = false,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: isActive ? active : lightGrey, width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomeText(
                  text: title,
                  size: 24,
                  weight: FontWeight.w300,
                  color: isActive ? active : lightGrey,
                ),
                const SizedBox(
                  width: 8,
                ),
                CustomeText(
                  text: newValue,
                  size: 16,
                  weight: FontWeight.w300,
                  color: const Color(0xff63E712),
                ),
              ],
            ),
            CustomeText(
              text: value,
              size: 24,
              weight: FontWeight.bold,
              color: isActive ? active : lightGrey,
            )
          ],
        ),
      ),
    );
  }
}
