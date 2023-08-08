import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key, key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi + "Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                'images/' + secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(4),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetayi,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
