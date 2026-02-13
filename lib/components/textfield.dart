import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextfield({super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        decoration: BoxDecoration(
          color:  Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.3,
              blurRadius: 2,
              offset: Offset(0, 2)
            )
          ]
        ),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        margin: EdgeInsets.symmetric(vertical: 7),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
            decoration: InputDecoration(
            border: InputBorder.none,
             hintText:hintText,hintStyle: TextStyle(
              fontFamily: "cerapro",
              color: Colors.black45,
              fontWeight: FontWeight.bold,
              
            )
          ),
        ),
      ),
    );
  }
}