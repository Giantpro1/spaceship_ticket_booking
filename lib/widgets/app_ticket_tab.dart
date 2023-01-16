import 'package:flutter/material.dart';
import 'package:spaceship_ticket_booking/utils/app_layout.dart';

class AppTickTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTickTab({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
     final size = AppLayOut.getSize(context);
    return  FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayOut.getHeight(50)),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(children: [
                // airline ticket
                Container(
                  width: size.width*0.44,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayOut.getHeight(7)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayOut.getHeight(50)),
                    ),
                    color: Colors.white,
                  ),
                  child:  Center(child: Text(firstTab)),
                ),
                // hotels
                Container(
                  width: size.width*0.44,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayOut.getHeight(7)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayOut.getHeight(50)),
                    ),
                    color: Colors.transparent,
                  ),
                  child:  Center(child: Text(secondTab)),
                )
              ]),
            ),
          );
  }
}