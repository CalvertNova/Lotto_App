import 'package:flutter/material.dart';

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 255, 254, 248),
      body:Center(
        child: Text("games",
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