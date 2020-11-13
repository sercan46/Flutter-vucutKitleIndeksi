import 'package:flutter/material.dart';

class CardChild extends StatelessWidget {
  final IconData icon;
  final String text;
  CardChild({this.icon,this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        Text(
          text,
          style: TextStyle(
              color: Color(0xFF2c3e50),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

