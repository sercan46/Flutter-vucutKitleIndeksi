import 'dart:math';
class HesaplamaAlani{
  final int boy;
  final int kilo;
  double _vki;
  HesaplamaAlani({this.boy,this.kilo});

  String hesapla(){
    _vki=kilo/pow(boy/100,2);
    return _vki.toStringAsFixed(1);
  }
  String sonucGetir(){
    if(_vki>=25){
      return 'Çok Kilolu';
    }
    else if(_vki>18){
      return 'Kilolu';
    }
    else{
      return 'Normal';
    }
  }
  String yorumGetir(){
        if(_vki>=25){
      return 'Yediklerinize Dikkat Etmelisiniz';
    }
    else if(_vki>18){
      return 'Çok Canını Sıkma Ama Kilo Ver';
    }
    else{
      return 'Herşey Düzgün Görünüyor';
    }
  }
}