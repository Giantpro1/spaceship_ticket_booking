import 'package:flutter/material.dart';
import 'package:spaceship_ticket_booking/utils/app_style.dart';

class MultTextWid extends StatelessWidget {
  final String firstText;
  final String secondText;

  const MultTextWid({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            secondText,
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
