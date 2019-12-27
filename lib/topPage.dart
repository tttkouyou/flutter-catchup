import 'package:flutter/material.dart';

import './productButton.dart';
import './purchasePlanButton.dart';
import './addFoodButton.dart';

class TopPage extends StatelessWidget {
  TopPage({Key, key, this.purchasePlanList, this.additem, this.scaffoldKey});
  final List<String> purchasePlanList;
  final additem;
  final scaffoldKey;

  int listCount = 4;
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
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          PurchasePlanButton(purchasePlanList: purchasePlanList),
          AddFoodButton(),
        ]),
        body: GridView.builder(
          itemCount: listCount,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return ProductButton(
                scaffoldKey: scaffoldKey,
                index: index,
                purchasePlanList: purchasePlanList,
                additem: additem,
                listCount: listCount);
          },
        ),
      ),
    );
  }
}
