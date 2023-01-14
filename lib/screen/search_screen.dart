import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spaceship_ticket_booking/utils/app_layout.dart';
import 'package:spaceship_ticket_booking/utils/app_style.dart';
import 'package:spaceship_ticket_booking/widgets/app_ticket_tab.dart';
import 'package:spaceship_ticket_booking/widgets/mul_text_wid.dart';
import 'package:spaceship_ticket_booking/widgets/text_icon_wid.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayOut.getWidth(20),
            vertical: AppLayOut.getHeight(20)),
        children: [
          Gap(AppLayOut.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayOut.getWidth(35)),
          ),
          Gap(AppLayOut.getHeight(20)),
          const AppTickTab(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          Gap(AppLayOut.getHeight(25)),
          const TextIcons(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          Gap(AppLayOut.getHeight(20)),
          const TextIcons(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          Gap(AppLayOut.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayOut.getWidth(18),
                horizontal: AppLayOut.getHeight(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayOut.getWidth(10)),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayOut.getHeight(40)),
          const MultTextWid(
              firstText: "Upcoming Flight", secondText: "View All"),
          Gap(AppLayOut.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: AppLayOut.getHeight(425),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayOut.getHeight(15),
                  vertical: AppLayOut.getWidth(15),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayOut.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayOut.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayOut.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/2.jpg'),
                        ),
                      ),
                    ),
                    Gap(AppLayOut.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              // Gap(AppLayOut.getWidth(10)),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayOut.getHeight(200),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayOut.getHeight(18),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayOut.getHeight(15),
                            horizontal: AppLayOut.getHeight(15)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Gap(AppLayOut.getHeight(10)),
                              Text(
                                "Take the survey about our services and get discount",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ]),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayOut.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18, color: const Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayOut.getHeight(15)),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayOut.getHeight(15),
                      horizontal: AppLayOut.getHeight(15),
                    ),
                    width: size.width * 0.44,
                    height: AppLayOut.getHeight(210),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayOut.getHeight(18)),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayOut.getHeight(15)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '',
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: '',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '',
                                style: TextStyle(fontSize: 38),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
