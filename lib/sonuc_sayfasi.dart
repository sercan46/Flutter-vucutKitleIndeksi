import 'package:flutter/material.dart';
import 'package:vucutkitleindex_f/hesap_button.dart';
import 'package:vucutkitleindex_f/hesap_card.dart';

class SonucSayfasi extends StatelessWidget {
  SonucSayfasi({this.sonuc, this.sonucText, this.sonucYorum});
  final String sonuc;
  final String sonucText;
  final String sonucYorum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('VKI Hesaplama Sonucu'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  'Sonucunuz',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
                flex: 4,
                child: HesapCard(
                  renk: Colors.blue,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        sonuc,
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                       sonucText,
                        style: TextStyle(fontSize: 80),
                      ),
                      Text(
                        sonucYorum,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                )),
            HesapButon(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'YENİDEN HESAPLA',
            ),
          ],
        ));
  }
}
