import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:spaceship_ticket_booking/utils/app_layout.dart';
import 'package:spaceship_ticket_booking/utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Styles.orangeColor,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/2.jpg"),
              ),
            ),
          ),
          const Gap(10),
          Text("Open Space", style: Styles.headLineStyle2.copyWith(color: Styles.KapiColor),),
          const Gap(5),
          Text("London", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
          const Gap(8),
           Text("\$40/night ", style: Styles.headLineStyle1.copyWith(color: Styles.KapiColor),),
        ],
      ),
    );
  }
}
