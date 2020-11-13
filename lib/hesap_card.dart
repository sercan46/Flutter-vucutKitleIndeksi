import 'package:flutter/material.dart';
class HesapCard extends StatelessWidget {
  HesapCard({@required this.renk, this.cardChild});
  final Color renk;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: renk, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      child: cardChild,
    );
  }
}
