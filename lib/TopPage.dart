import 'package:flutter/material.dart';

import './GoodsButton.dart';
import './DrawerMenu.dart';
import './PurchaseList.dart';

class TopPage extends StatelessWidget {
  TopPage({
    Key key,
    this.purchasePlanList,
    this.additem,
    this.scaffoldKey,
    this.ingredientName,
    this.ingredientColor,
    this.addButton,
    this.addButtonColor,
  });
  final List<String> purchasePlanList;
  final additem;
  final scaffoldKey;
  final ingredientName;
  final ingredientColor;
  final addButton;
  final addButtonColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buyer support App',
      theme: ThemeData(),
      home: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('お買い物サポート'),
          backgroundColor: Colors.orange,
        ),
        drawer: DrawerMenu(
          addButton: addButton,
          addButtonColor: addButtonColor,
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
            return GoodsButton(
              scaffoldKey: scaffoldKey,
              index: index,
              purchasePlanList: purchasePlanList,
              additem: additem,
              ingredientName: ingredientName,
              ingredientColor: ingredientColor,
            );
          },
        ),
      ),
    );
  }
}

class PurchasePlanButton extends StatelessWidget {
  PurchasePlanButton({
    this.purchasePlanList,
  });
  final purchasePlanList;

  void purchasePage(BuildContext context, _purchasePlanList) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PurchaseList(purchasePlanList: _purchasePlanList),
      ),
    );
    // Navigator.pushNamed(context, "/ArticleList");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: FloatingActionButton.extended(
        onPressed: () => purchasePage(context, purchasePlanList),
        label: Text('購入予定'),
        backgroundColor: Colors.orange[300],
      ),
    );
  }
}
