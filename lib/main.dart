import 'package:flutter/material.dart';
import 'package:spaceship_ticket_booking/screen/bottom_bar.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({super.key});
 
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title:  'Welcome',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const BottomBar(),
    );
  }
}

