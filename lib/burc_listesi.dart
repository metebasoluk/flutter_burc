import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterburc/burc_item.dart';
import 'package:flutterburc/data/strings.dart';
import 'package:flutterburc/model/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar = [];

  BurcListesi() {
    tumBurclar = veriKaynagiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burçlar Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listelenenBurc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }
}

List<Burc> veriKaynagiHazirla() {
  List<Burc> gecici = [];
  for (int i = 0; i < 12; i++) {
    var burcAdi = Strings.BURC_ADLARI[i];
    var burcTarih = Strings.BURC_TARIHLERI[i];
    var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
    var burcKucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
    var burcBuyukResim =
        Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
    Burc eklenecekBurc =
        Burc(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);
    gecici.add(eklenecekBurc);
  }

  return gecici;
}
