import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  const Tickets({super.key});

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 255, 254, 248),
      body:Center(
        child: Text("Tickets",
        style:
         TextStyle(
           fontSize: 24,
           fontWeight: FontWeight.bold
        ),
        ),
      ),
     
    );
  }
}