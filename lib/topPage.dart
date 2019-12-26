import 'package:flutter/material.dart';

import './productButton.dart';
import './purchasePlanButton.dart';

class TopPage extends StatelessWidget {
  TopPage({Key, key, this.purchasePlanList, this.additem, this.scaffoldKey});
  final List<String> purchasePlanList;
  final additem;
  final scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buyer support App',
      theme: ThemeData(),
      home: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('お買い物サポート'), backgroundColor: Colors.orange),
        floatingActionButton:
            PurchasePlanButton(purchasePlanList: purchasePlanList),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(
            3,
            (index) {
              return ProductButton(
                scaffoldKey: scaffoldKey,
                index: index,
                purchasePlanList: purchasePlanList,
                additem: additem,
              );
            },
          ),
        ),
      ),
    );
  }
}
