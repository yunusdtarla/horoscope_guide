// ignore_for_file: unused_local_variable, prefer_const_constructors, use_key_in_widget_constructors

import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BURÇ LİSTESİ"),
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return BurcItem(listelenenBurc: tumBurclar[index]);
        },
        itemCount: tumBurclar.length,
      )),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
      //! koc1.png degerini oluşturmak için Koc --> koc --> koc1.png
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png";
      Burc eklenecekBurc =
          Burc(burcAdi, burcTarih, burcDetayi, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
