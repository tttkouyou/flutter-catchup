import 'package:flutter/material.dart';

import './productButton.dart';
import './purchasePlanButton.dart';
import './addFoodButton.dart';

class TopPage extends StatelessWidget {
  TopPage({
    Key,
    key,
    this.purchasePlanList,
    this.additem,
    this.scaffoldKey,
  });
  final List<String> purchasePlanList;
  final additem;
  final scaffoldKey;

  int listCount = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('お買い物サポート'),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'メニュー',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text('食品ボタンを追加',
              style: TextStyle(
                color: Colors.orange[500],
                fontSize: 20,
              ),
              ),
              onTap: () {},
            )
          ],
          ),
        ),
      floatingActionButton:
            PurchasePlanButton(purchasePlanList: purchasePlanList),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    body:
    GridView.builder(
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
          listCount: listCount,
        );
      },
    ),
    );
  }
}
