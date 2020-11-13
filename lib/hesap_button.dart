import 'package:flutter/material.dart';

class HesapButon extends StatelessWidget {
    final Function onTap;
    final String text;

    HesapButon({@required this.onTap,@required this.text});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
          text,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        color: Colors.red,
        margin: EdgeInsets.only(top: 1),
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        width: double.infinity,
      ),
    );
  }
}
