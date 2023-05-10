import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color textcolor;

  const Button(
      {required this.text,
      required this.bgcolor,
      required this.textcolor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgcolor, borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 25,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 22,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
