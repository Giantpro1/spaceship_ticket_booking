import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spaceship_ticket_booking/screen/ticket_view.dart';
import 'package:spaceship_ticket_booking/utils/app_info_list.dart';
import 'package:spaceship_ticket_booking/utils/app_layout.dart';
import 'package:spaceship_ticket_booking/utils/app_style.dart';
import 'package:spaceship_ticket_booking/widgets/app_ticket_tab.dart';
import 'package:spaceship_ticket_booking/widgets/tick_layout_comm.dart';
import 'package:spaceship_ticket_booking/widgets/ticket_view_Column.dart';
import 'package:barcode/barcode.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayOut.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayOut.getHeight(20),
                vertical: AppLayOut.getHeight(20)),
            children: [
              Gap(AppLayOut.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayOut.getHeight(20)),
              const AppTickTab(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayOut.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayOut.getHeight(15)),
                child: TicketView(
                  tickets: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TicketColunmn(
                          FirstColumnText: "Giantpro",
                          SecondColumnText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        TicketColunmn(
                          FirstColumnText: "56765 08657665",
                          SecondColumnText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayOut.getHeight(20)),
                    AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      widths: 5,
                    ),
                    Gap(AppLayOut.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TicketColunmn(
                          FirstColumnText: "00657 783636383",
                          SecondColumnText: "Number of E-Ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        TicketColunmn(
                          FirstColumnText: "B6SG58",
                          SecondColumnText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    // AppLayoutBuilder(
                    //   sections: 15,
                    //   isColor: false,
                    //   widths: 5,
                    // ),
                    Gap(AppLayOut.getHeight(20)),
                    AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      widths: 5,
                    ),
                    Gap(AppLayOut.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(children: [
                              Image.asset(
                                "images/visa.png",
                                scale: 2,
                              ),
                              Text(
                                "  *** 2462",
                                style: Styles.headLineStyle3,
                              )
                            ]),
                            Gap(5),
                            Text(
                              "Payment Method",
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        TicketColunmn(
                          FirstColumnText: "\$249.99",
                          SecondColumnText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                // color: Colors.white,
                margin: EdgeInsets.only(
                    left: AppLayOut.getHeight(15),
                    right: AppLayOut.getHeight(15)),
                padding: EdgeInsets.only(
                    top: AppLayOut.getHeight(20),
                    bottom: AppLayOut.getHeight(20)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(AppLayOut.getHeight(21)),
                  bottomLeft: Radius.circular(AppLayOut.getHeight(21)),
                )),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayOut.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayOut.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://githhub.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayOut.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayOut.getHeight(15)),
                child: TicketView(
                  tickets: ticketList[0],
                  isColor: null,
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayOut.getHeight(22),
            top: AppLayOut.getHeight(295),
            child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                )),
          ),
          Positioned(
            right: AppLayOut.getHeight(22),
            top: AppLayOut.getHeight(295),
            child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                )),
          ),
        ],
      ),
    );
  }
}
