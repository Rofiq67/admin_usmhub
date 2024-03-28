import 'package:flutter/material.dart';
import 'package:admin_usmhub_v1/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final String newValue;
  final Function()? onTap;

  const InfoCard({
    super.key,
    this.title = '',
    this.value = '',
    this.newValue = '',
    this.topColor = const Color(0xff3E4095),
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 150,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12,
              ),
            ],
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: topColor,
                      height: 5,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "$title\n",
                    style: TextStyle(
                      fontSize: 16,
                      color: isActive ? active : lightGrey,
                    ),
                  ),
                  TextSpan(
                    text: "$value\n",
                    style: TextStyle(
                      fontSize: 40,
                      color: isActive ? active : lightGrey,
                    ),
                  ),
                  TextSpan(
                    text: "$newValue\n ",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xff63E712),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
