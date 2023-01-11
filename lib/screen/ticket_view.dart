import 'package:flutter/cupertino.dart';
import 'package:spaceship_ticket_booking/utils/app_layout.dart';
import 'package:spaceship_ticket_booking/utils/app_style.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return  SizedBox(
      width: size.width,
      height: 200,
      child: Container(child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(children: [
                Text("NYC", style: Styles.headLineStyle3,),
                Text("London", style: Styles.headLineStyle3,)
              ],)
            ]),
          )
        ],
      ),),
    );
  }
}
