import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spaceship_ticket_booking/utils/app_layout.dart';
import 'package:spaceship_ticket_booking/utils/app_style.dart';

class TextIcons extends StatelessWidget {
  final IconData icon;
  final String text;
  const TextIcons({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: EdgeInsets.symmetric(vertical: AppLayOut.getWidth(12), horizontal: AppLayOut.getHeight(12)),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayOut.getWidth(10)),
            color: Colors.white,
             ),
            child: Row(children: [
               Icon(icon, color: const Color(0xFFBFC2DF),),
              Gap(AppLayOut.getWidth(10)),
              Text(text, style: Styles.textStyle),
            ],),
          );
  }
}