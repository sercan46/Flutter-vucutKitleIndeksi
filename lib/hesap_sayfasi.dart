import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vucutkitleindex_f/hesaplama_alani.dart';
import 'package:vucutkitleindex_f/sonuc_sayfasi.dart';
import 'hesap_card.dart';
import 'card_child.dart';
import 'hesap_button.dart';

const aktifCardRenk = Color(0xFF8e44ad);
const inaktifCardRenk = Color(0xFFa29bfe);
enum Cinsiyet { erkek, kadin }

class HesaplamaSayfasi extends StatefulWidget {
  @override
  _HesaplamaSayfasiState createState() => _HesaplamaSayfasiState();
}

class _HesaplamaSayfasiState extends State<HesaplamaSayfasi> {
  Color erkekCardRenk = inaktifCardRenk;
  Color kadinCardRenk = inaktifCardRenk;
  Cinsiyet secilmisCinsiyet;
  int boy = 180;
  int kilo = 70;
  int yas = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('VKI Hesaplama'),
        )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          secilmisCinsiyet = Cinsiyet.erkek;
                        });
                      },
                      child: HesapCard(
                        renk: secilmisCinsiyet == Cinsiyet.erkek
                            ? aktifCardRenk
                            : inaktifCardRenk,
                        cardChild: CardChild(
                          text: 'ERKEK',
                          icon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          secilmisCinsiyet = Cinsiyet.kadin;
                        });
                      },
                      child: HesapCard(
                        renk: secilmisCinsiyet == Cinsiyet.kadin
                            ? aktifCardRenk
                            : inaktifCardRenk,
                        cardChild: CardChild(
                          text: 'KADIN',
                          icon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: HesapCard(
                renk: Color(0xFFa29bfe),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BOY',
                      style: TextStyle(
                          color: Color(0xFF2c3e50),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          boy.toString(),
                          style: TextStyle(
                              color: Colors.red[600],
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              color: Colors.red[600],
                              fontSize: 50,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 20),
                          thumbColor: Color(0xFF8e44ad),
                          overlayColor: Color(0x298e44ad)),
                      child: Slider(
                        value: boy.toDouble(),
                        min: 50,
                        max: 250,
                        activeColor: Color(0xFFd63031),
                        inactiveColor: Color(0xFFff7979),
                        onChanged: (double yeniDeger) {
                          setState(() {
                            boy = yeniDeger.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: HesapCard(
                      renk: Color(0xFFa29bfe),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'KİLO',
                            style: TextStyle(
                                color: Color(0xFF2c3e50),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            kilo.toString(),
                            style: TextStyle(
                                color: Colors.red[600],
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: null,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.add,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kilo++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                heroTag: null,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.remove,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kilo--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: HesapCard(
                      renk: Color(0xFFa29bfe),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'YAŞ',
                            style: TextStyle(
                                color: Color(0xFF2c3e50),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            yas.toString(),
                            style: TextStyle(
                                color: Colors.red[600],
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: null,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.add,
                                ),
                                onPressed: () {
                                  setState(() {
                                    yas++;
                                  });
                                },
                              ),
                              SizedBox(width: 10),
                              FloatingActionButton(
                                heroTag: null,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.remove,
                                ),
                                onPressed: () {
                                  setState(() {
                                    yas--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            HesapButon(
              onTap: () {
                HesaplamaAlani hesap=HesaplamaAlani(boy: boy,kilo:kilo);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SonucSayfasi(sonuc: hesap.hesapla(),sonucText: hesap.sonucGetir(),sonucYorum: hesap.yorumGetir());
                }));
              },
              text: 'HESAPLA',
            ),
          ],
        ));
  }
}
