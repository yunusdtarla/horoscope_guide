import 'package:burc_rehberi/burc_detay.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/burcDetay", arguments: listelenenBurc);
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burcKucukResim,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle:
                Text(listelenenBurc.burcTarih, style: myTextStyle.subtitle1),
            // ignore: prefer_const_constructors
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.cyan,
            ),
          ),
        ),
      ),
    );
  }
}
