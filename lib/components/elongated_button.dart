import 'package:flutter/material.dart';

class ElongatedButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const ElongatedButton({super.key,
  required this.onTap,
  required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:  const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        decoration: BoxDecoration(
          color:  Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.3,
              blurRadius: 2,
              offset: Offset(0, 2)
            )]
            ),
             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 9),
        margin: EdgeInsets.symmetric(vertical: 1),
        child: Center(
          child: Text(text,
          style: TextStyle(
            fontFamily: "cerapro",
            fontWeight: FontWeight.bold
          ),),
        ),
            ),
      ),
    );
  }
}