import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spaceship_ticket_booking/utils/app_layout.dart';
import 'package:spaceship_ticket_booking/utils/app_style.dart';
import 'package:spaceship_ticket_booking/widgets/tick_layout_comm.dart';
import 'package:spaceship_ticket_booking/widgets/ticket_view_Column.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayOut.getHeight(20),
            vertical: AppLayOut.getHeight(20)),
        children: [
          Gap(AppLayOut.getHeight(40)),
          Row(
            children: [
              Container(
                height: AppLayOut.getHeight(86),
                width: AppLayOut.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayOut.getHeight(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage("images/icons8-tickets-62.png"),
                  ),
                ),
              ),
              Gap(AppLayOut.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1,
                  ),
                  Gap(AppLayOut.getHeight(2)),
                  Text(
                    "New York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayOut.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayOut.getHeight(3),
                        vertical: AppLayOut.getHeight(3)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayOut.getHeight(100)),
                      color: Color(0xFFFEF4F3),
                    ),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF526799),
                        ),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(AppLayOut.getHeight(5)),
                      Text(
                        "Premium Status",
                        style: TextStyle(
                          color: Color(0xFF526799),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Gap(AppLayOut.getHeight(5)),
                    ]),
                  ),
                ],
              ),
              Spacer(),
              Column(children: [
                InkWell(
                    onTap: (() {
                      print('You tapped me');
                    }),
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ))
              ]),
            ],
          ),
          Gap(AppLayOut.getHeight(8)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayOut.getHeight(8)),
          Stack(
            children: [
              Container(
                  height: AppLayOut.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayOut.getHeight(18)),
                  )),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayOut.getHeight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayOut.getHeight(25),
                    vertical: AppLayOut.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayOut.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'v got a new award",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 85 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayOut.getHeight(25)),
          Text(
            "Accumulated Miles",
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayOut.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayOut.getHeight(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayOut.getHeight(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "237674",
                  style: TextStyle(
                      fontSize: 45,
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                Gap(AppLayOut.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "16 January 2023",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayOut.getHeight(4)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayOut.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketColunmn(
                      FirstColumnText: "23 042",
                      SecondColumnText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    TicketColunmn(
                      FirstColumnText: "Airline CO",
                      SecondColumnText: "Recieved From",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayOut.getHeight(12)),
                AppLayoutBuilder(
                  sections: 12,
                  isColor: false,
                ),
                Gap(AppLayOut.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketColunmn(
                      FirstColumnText: "24",
                      SecondColumnText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    TicketColunmn(
                      FirstColumnText: "Giantpro",
                      SecondColumnText: "Recieved From",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayOut.getHeight(12)),
                AppLayoutBuilder(
                  sections: 12,
                  isColor: false,
                ),
                Gap(AppLayOut.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketColunmn(
                      FirstColumnText: "53 670",
                      SecondColumnText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    TicketColunmn(
                      FirstColumnText: "SHTech",
                      SecondColumnText: "Recieved From",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayOut.getHeight(35)),
          InkWell(
            onTap: () {
              print("You Tapped Me");
            },
            child: Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
