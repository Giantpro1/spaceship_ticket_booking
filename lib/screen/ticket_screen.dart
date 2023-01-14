import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spaceship_ticket_booking/screen/ticket_view.dart';
import 'package:spaceship_ticket_booking/utils/app_info_list.dart';
import 'package:spaceship_ticket_booking/utils/app_layout.dart';
import 'package:spaceship_ticket_booking/utils/app_style.dart';
import 'package:spaceship_ticket_booking/widgets/app_ticket_tab.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Scaffold(
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayOut.getHeight(20), vertical: AppLayOut.getHeight(20)),
          children: [
            Gap(AppLayOut.getHeight(40)),
          Text('Tickets', style: Styles.headLineStyle1,),
          Gap(AppLayOut.getHeight(20)),
          const AppTickTab(firstTab: 'Upcoming', secondTab: 'Previous'),
          Gap(AppLayOut.getHeight(20)),
          Container(
            padding: EdgeInsets.only(left: AppLayOut.getHeight(15)),
            child: TicketView(tickets: ticketList[0], isColor: true,),
          ),
        ],)
      ]),
    );
  }
}