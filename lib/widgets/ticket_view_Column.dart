import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spaceship_ticket_booking/utils/app_layout.dart';
import 'package:spaceship_ticket_booking/utils/app_style.dart';


class TicketColunmn extends StatelessWidget {
  final bool? isColor;
  final CrossAxisAlignment alignment;
  final String FirstColumnText;
  final String SecondColumnText;
  const TicketColunmn(
      {super.key,
      required this.FirstColumnText,
      required this.SecondColumnText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          FirstColumnText,
          style: isColor==null
              ? Styles.headLineStyle3.copyWith(color: Colors.white)
              : Styles.headLineStyle3,
        ),
        Gap(AppLayOut.getHeight(5)),
        Text(
          SecondColumnText,
          style: isColor==null
              ? Styles.headLineStyle4.copyWith(color: Colors.white)
              : Styles.headLineStyle4,
        ),
      ],
    );
  }
}
