import 'package:flutter/material.dart';

import './productButton.dart';
import './purchasePlanButton.dart';
import './drawerMenu.dart';

class TopPage extends StatelessWidget {
  TopPage({
    Key key,
    this.purchasePlanList,
    this.additem,
    this.scaffoldKey,
    this.ingredientName,
    this.ingredientColor,
    this.addButton,
  });
  final List<String> purchasePlanList;
  final additem;
  final scaffoldKey;
  final ingredientName;
  final ingredientColor;
  final addButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('お買い物サポート'),
        backgroundColor: Colors.orange,
      ),
      drawer: DrawerMenu(
        addButton: addButton,
      ),
      floatingActionButton:
          PurchasePlanButton(purchasePlanList: purchasePlanList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: GridView.builder(
        // itemCount: listCount,
        itemCount: ingredientName.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return ProductButton(
            scaffoldKey: scaffoldKey,
            index: index,
            purchasePlanList: purchasePlanList,
            additem: additem,
            ingredientName: ingredientName,
            ingredientColor: ingredientColor,
          );
        },
      ),
    );
  }
}
