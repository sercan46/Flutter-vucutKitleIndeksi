import 'package:flutter/material.dart';
import 'hesap_sayfasi.dart';
void main() {
  runApp(VKIHesapla());
}

class VKIHesapla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red,
          //accentColor: Color(0xFF9b59b6),
          scaffoldBackgroundColor: Color(0xFF9b59b6),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: HesaplamaSayfasi(),
    );
  }
}
