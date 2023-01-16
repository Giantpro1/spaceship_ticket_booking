
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:spaceship_ticket_booking/utils/app_layout.dart';
import 'package:spaceship_ticket_booking/utils/app_style.dart';
import 'package:spaceship_ticket_booking/widgets/continer_thick.dart';
import 'package:spaceship_ticket_booking/widgets/tick_layout_comm.dart';
import 'package:spaceship_ticket_booking/widgets/ticket_view_Column.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> tickets;
  final bool? isColor;
  const TicketView({super.key, required this.tickets, required this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayOut.getHeight(GetPlatform.isAndroid==true?163:169),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayOut.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // container responsible for showing the blue color
            Container(
              decoration:  BoxDecoration(
                color: isColor==null? const Color(0xFF526799) :Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayOut.getHeight(21)),
                  topRight: const Radius.circular(21),
                ),
              ),
              padding:  EdgeInsets.all(AppLayOut.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        tickets['from']['code'],
                        style:
                          isColor==null?  Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(isColor: true),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayOut.getHeight(24),
                              child: AppLayoutBuilder(sections: 6)
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child:  Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor==null?Colors.white:Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(isColor: true),
                      Expanded(child: Container()),
                      Text(
                        tickets['to']['code'],
                        style:
                           isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayOut.getWidth(100),
                        child: Text(
                          tickets['from']['name'].toString(),
                          style: isColor==null? Styles.headLineStyle4
                              .copyWith(color: Colors.white):Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        tickets['flying_time'],
                        style:
                          isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                      ),
                      SizedBox(
                        width: AppLayOut.getWidth(100),
                        child: Text(
                          tickets['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor==null? Styles.headLineStyle4
                              .copyWith(color: Colors.white):Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // container responsible for showing the orange color
            Container(
              color: isColor==null?Styles.orangeColor:Colors.white,
              child: Row(
                children: [
                   SizedBox(
                    height: AppLayOut.getHeight(20),
                    width: AppLayOut.getHeight(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null?Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) =>  SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: isColor==null? Colors.white:Colors.grey.shade300),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:isColor==null? Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // bottom part of the orange part
            Container(
              decoration: BoxDecoration(
                color: isColor==null?Styles.orangeColor:Colors.white,
                borderRadius:  BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null?21:0),
                  bottomRight: Radius.circular(isColor==null?21:0),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TicketColunmn(FirstColumnText: tickets['date'], SecondColumnText: "Date", alignment: CrossAxisAlignment.start, isColor: isColor,),
                      TicketColunmn(FirstColumnText: tickets['departure_time'], SecondColumnText: "Departure time", alignment: CrossAxisAlignment.center, isColor: isColor,),
                      TicketColunmn(FirstColumnText: tickets['number'].toString(), SecondColumnText: "Number", alignment: CrossAxisAlignment.end, isColor: isColor,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
