import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 255, 254, 248),
      body:Center(
        child: Text("Results",
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